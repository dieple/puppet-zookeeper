# /etc/puppet/modules/zookeeper/manafests/init.pp

class zookeeper::params {

	include java::params

	$version = $::hostname ? {
		default			=> "3.4.9",
	}

 	$zookeeper_user = $::hostname ? {
		default			=> "zookeeper",
	}
 
 	$zookeeper_group = $::hostname ? {
		default			=> "zookeeper",
	}
        
	$servers = $::hostname ? {
		default			=> ["zk1.fpa.rbxd.ds", "zk2.fpa.rbxd.ds", "zk3.fpa.rbxd.ds"] 
	}
 
	$java_home = $::hostname ? {
		default			=> "${java::params::java_base}/jdk${java::params::java_version}",
	}

	$zookeeper_base = $::hostname ? {
		default			=> "/opt/zookeeper",
	}
 
	$zookeeper_conf = $::hostname ? {
		default			=> "${zookeeper_base}/zookeeper/conf",
	}
 
    $zookeeper_user_path = $::hostname ? {
		default			=> "/home/${zookeeper_user}",
	}             

 	$zookeeper_data_path = $::hostname ? {
		default			=> "/opt/zookeeper/zookeeper/data",
	}

    $kerberos_mode = $::hostname ? {
        default            => "no",
    }

    $keytab_path = $::hostname ? {
        default            => "/etc/security/keytab",
    }

    $kerberos_realm = $::hostname ? {
        default            => "OPENSTACKLOCAL",
    }

}
