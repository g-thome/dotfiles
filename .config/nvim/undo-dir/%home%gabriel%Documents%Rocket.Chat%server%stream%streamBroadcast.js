Vim�UnDo� ��"݈��]��C�7�^|���/�]�.��'�  Z   		  X         4       4   4   4    _۲�    _�                   H        ����                                                                                                                                                                                                                                                                                                                           C         L          V       _�j�     �  H  J  O      		�  H  J  N    5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  H  J  O      		console.log()5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  H  J  O      		console.log('connections: ')5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  H  J  O      		console.log('connections: ')5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  H  J  O      		console.log('connections: ,')5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  H  J  O      		console.log('connections: ')5�_�                   I       ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�    �  H  J  O      		console.log('connections: ',)5�_�                     b        ����                                                                                                                                                                                                                                                                                                                           C         M          V       _ی�     �   b   d  O    5�_�      !               c       ����                                                                                                                                                                                                                                                                                                                           D         N          V       _ی�     �   b   e  P      			5�_�       "           !   d       ����                                                                                                                                                                                                                                                                                                                           E         O          V       _ی�     �   c   e  Q      			console.log()5�_�   !   #           "   d       ����                                                                                                                                                                                                                                                                                                                           E         O          V       _ی�     �   c   d          			console.log(connections);5�_�   "   $           #   f        ����                                                                                                                                                                                                                                                                                                                           D         N          V       _ی�     �   f   h  P    �   f   g  P    5�_�   #   %           $   f       ����                                                                                                                                                                                                                                                                                                                           E         O          V       _ی�   	 �   f   h  Q    5�_�   $   &           %  B       ����                                                                                                                                                                                                                                                                                                                           F         P          V       _۲     �  B  D  R    5�_�   %   '           &  C        ����                                                                                                                                                                                                                                                                                                                           G         Q          V       _۲     �  A  C  S      });    �  B  D  S       5�_�   &   (           '  >        ����                                                                                                                                                                                                                                                                                                                           F         P          V       _۲     �  >  @  R    5�_�   '   )           (  ?        ����                                                                                                                                                                                                                                                                                                                           G         Q          V       _۲     �  >  A  S       5�_�   (   *           )  @       ����                                                                                                                                                                                                                                                                                                                           H         R          V       _۲     �  @  B  U    �  ?  B  T      function getInstances() {}5�_�   )   +           *  A        ����                                                                                                                                                                                                                                                                                                                           J         T          V       _۲2     �  A  M  V    �  A  B  V    5�_�   *   ,           +  A        ����                                                                                                                                                                                                                                                                                                                           U         _          V       _۲3     �  @  A           5�_�   +   -           ,  A       ����                                                                                                                                                                                                                                                                                                                           T         ^          V       _۲8     �  A  C  a      			�  A  C  `    5�_�   ,   .           -  H       ����                                                                                                                                                                                                                                                                                                                           U         _          V       _۲N     �  G  H          ,		console.log('connections: ', connections);5�_�   -   /           .  C        ����                                                                                                                                                                                                                                                                                                                           C         E          V       _۲X     �  B  C          X			throw new Meteor.Error('error-action-not-allowed', 'List instances is not allowed', {   				method: 'instances/get',   			});5�_�   .   0           /  B       ����                                                                                                                                                                                                                                                                                                                           C         C          V       _۲Y   
 �  @  I  ]      ;		if (!hasPermission(Meteor.userId(), 'view-statistics')) {   
			return;   		}       4		return Object.keys(connections).map((address) => {   %			const conn = connections[address];   �			return Object.assign({ address, currentStatus: conn._stream.currentStatus }, _.pick(conn, 'instanceRecord', 'broadcastAuth'));   		});5�_�   /   1           0  @        ����                                                                                                                                                                                                                                                                                                                           A         A          V       _۲^     �  ?  A  ]      function getInstances() {5�_�   0   2           1  P       ����                                                                                                                                                                                                                                                                                                                           A         A          V       _۲d     �  P  R  ^      		�  P  R  ]    5�_�   1   3           2  R       ����                                                                                                                                                                                                                                                                                                                           R         R   7       v   9    _۲r     �  Q  S  ^      ;		if (!hasPermission(Meteor.userId(), 'view-statistics')) {5�_�   2   4           3  X       ����                                                                                                                                                                                                                                                                                                                           R         R   7       v   9    _۲�     �  W  X          ,		console.log('connections: ', connections);5�_�   3               4  Y        ����                                                                                                                                                                                                                                                                                                                           X         [          V       _۲�    �  W  Y  Z      4		return Object.keys(connections).map((address) => {�  X  Y          %			const conn = connections[address];   �			return Object.assign({ address, currentStatus: conn._stream.currentStatus }, _.pick(conn, 'instanceRecord', 'broadcastAuth'));   		});5�_�                   I        ����                                                                                                                                                                                                                                                                                                                           C         M          V       _�j�     �  I  J  N       5�_�                   ;        ����                                                                                                                                                                                                                                                                                                                           D         M          V       _�      �  ;  <  N       5�_�                   <        ����                                                                                                                                                                                                                                                                                                                           E         N          V       _�      �  ;  =  O          	function 5�_�                   =   	    ����                                                                                                                                                                                                                                                                                                                           E         N          V       _�      �  <  >  P      function getInstances() {}5�_�                   =       ����                                                                                                                                                                                                                                                                                                                           G          P           V       _�      �  <  >  P      function getInstances() {   }�  =  >  Q       5�_�                  G        ����                                                                                                                                                                                                                                                                                                                           G          G           V       _� �     �  F  Q        5�_�                   >        ����                                                                                                                                                                                                                                                                                                                           Q          Q           V       _� �     �  >  ?  H    �  >  ?  H   
   ;		if (!hasPermission(Meteor.userId(), 'view-statistics')) {   X			throw new Meteor.Error('error-action-not-allowed', 'List instances is not allowed', {   				method: 'instances/get',   			});   		}       4		return Object.keys(connections).map((address) => {   %			const conn = connections[address];   �			return Object.assign({ address, currentStatus: conn._stream.currentStatus }, _.pick(conn, 'instanceRecord', 'broadcastAuth'));   		});5�_�                   >        ����                                                                                                                                                                                                                                                                                                                           P          P           V       _� �     �  =  ?        5�_�                   O       ����                                                                                                                                                                                                                                                                                                                           Q          Q           V       _� �     �  O  P  Q      		�  O  Q  R      		return getInstances5�_�                   P       ����                                                                                                                                                                                                                                                                                                                           Q          Q           V       _� �     �  O  Q  R      		return getInstances();5�_�                   P       ����                                                                                                                                                                                                                                                                                                                           Q          Q           V       _� �    �  =  H  R   
   :	if (!hasPermission(Meteor.userId(), 'view-statistics')) {   W		throw new Meteor.Error('error-action-not-allowed', 'List instances is not allowed', {   			method: 'instances/get',   		});   	}       3	return Object.keys(connections).map((address) => {   $		const conn = connections[address];   �		return Object.assign({ address, currentStatus: conn._stream.currentStatus }, _.pick(conn, 'instanceRecord', 'broadcastAuth'));   	});5�_�                   =        ����                                                                                                                                                                                                                                                                                                                           Q          Q           V       _� �    �  <  >  R       export function getInstances() {5�_�                   C        ����                                                                                                                                                                                                                                                                                                                           R          R           V       _�=�     �  C  D  R      	�  C  E  S      	console.log('connections: ')5�_�                   D       ����                                                                                                                                                                                                                                                                                                                           >   *      H          V   +    _�=�     �  C  E  S      *	console.log('connections: ', connections)5�_�                    D   *    ����                                                                                                                                                                                                                                                                                                                                                             _�=�    �  C  E  S      +	console.log('connections: ', connections);5�_�                  G        ����                                                                                                                                                                                                                                                                                                                           G          P           V       _� ,     �  F  Q  R   
   ;		if (!haspermission(meteor.userid(), 'view-statistics')) {   X			throw new meteor.error('error-action-not-allowed', 'list instances is not allowed', {   				method: 'instances/get',   			});   		}       4		return object.keys(connections).map((address) => {   %			const conn = connections[address];   �			return object.assign({ address, currentstatus: conn._stream.currentstatus }, _.pick(conn, 'instancerecord', 'broadcastauth'));   		});5�_�                   >        ����                                                                                                                                                                                                                                                                                                                           Q          Z           V       _� 2     �  >  ?  R    �  >  ?  R   
   ;		if (!haspermission(meteor.userid(), 'view-statistics')) {   X			throw new meteor.error('error-action-not-allowed', 'list instances is not allowed', {   				method: 'instances/get',   			});   		}       4		return object.keys(connections).map((address) => {   %			const conn = connections[address];   �			return object.assign({ address, currentstatus: conn._stream.currentstatus }, _.pick(conn, 'instancerecord', 'broadcastauth'));   		});5�_�                   >        ����                                                                                                                                                                                                                                                                                                                           Y         P          V       _� 3     �  =  ?        5�_�      	             Q       ����                                                                                                                                                                                                                                                                                                                           Q         P          V       _� 8     �  P  Z        �  O  Q  R      		getInstances()5�_�      
           	  P       ����                                                                                                                                                                                                                                                                                                                           Q         P          V       _� =     �  O  Q  R      		getInstances();5�_�   	              
  =       ����                                                                                                                                                                                                                                                                                                                           Q         P          V       _� D    �  =  H  R   
   :	if (!haspermission(meteor.userid(), 'view-statistics')) {   W		throw new meteor.error('error-action-not-allowed', 'list instances is not allowed', {   			method: 'instances/get',   		});   	}       3	return object.keys(connections).map((address) => {   $		const conn = connections[address];   �		return object.assign({ address, currentstatus: conn._stream.currentstatus }, _.pick(conn, 'instancerecord', 'broadcastauth'));   	});5�_�   
                P       ����                                                                                                                                                                                                                                                                                                                           Q         P          V       _� ]    �  O  Q  R      		return getInstances();5�_�                    >   
    ����                                                                                                                                                                                                                                                                                                                           Q         P          V       _� �    �  =  ?  R      :	if (!hasPermission(meteor.userid(), 'view-statistics')) {5��