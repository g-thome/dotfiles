Vim�UnDo� *1�&�2{׺�%�m(Ǌ���`+>�ӠK8   4   			         $   $   $   $   $        _��$    _�                   $          ����                                                                                                                                                                                                                                                                                                                                                             _��$     �         4      			�         5      			5�_�       !      $              ����                                                                                                                                                                                                                                                                                                                                                             _��     �         4      			�         5      			console.log()5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             _��     �         5      			console.log(res.body);5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             _��     �         5      !			console.log('bode: 'res.body);5�_�   "               #          ����                                                                                                                                                                                                                                                                                                                                                             _��    �         5      #			console.log('bode: ', res.body);5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             _� l     �         4       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _� l     �         5          0export const createBotUser = () => new Promise()5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                             _� z     �         6      2export const createBotUser = () => new Promise(())5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             _� z     �         6      9export const createBotUser = () => new Promise((resolve))5�_�                       8    ����                                                                                                                                                                                                                                                                                                                                                             _� |     �         6      ?export const createBotUser = () => new Promise((resolve) => {})5�_�                       =    ����                                                                                                                                                                                                                                                                                                                                                             _�      �         6      =export const createBotUser = () => new Promise((resolve) => {   })�         7      	�         8      ,	const username = `bot.test.${ Date.now() }`5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         8      -	const username = `bot.test.${ Date.now() }`;5�_�      	                 -    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         8      -	const username = `bot.test.${ Date.now() }`;   	const email = `${ username }`5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         9      +	const email = `${ username }@rocket.chat`;5�_�   	              
      *    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         9      	�         :      
	request()5�_�   
                    	    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         :      
	request()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         :      	request.post()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         :      	request.post(api())5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         :      "	request.post(api('users.create'))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         :      	�         ;      		.set()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         ;      		.set(credentials)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         ;      	�         <      			.send()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         <      7		.send({ email, name: username, username, password });5�_�                       7    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         <      6		.send({ email, name: username, username, password })5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         <      6		.send({ email, name: username, username, password })   		.end()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         =      
		.end(())5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         =      		.end((err, res))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         =      		.end((err, res) => resolve())5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         =      ,		.end((err, res) => resolve(res.body.user))5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �         =      -		.end((err, res) => resolve(res.body.user));5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _� �    �         =      });5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                      "          V       _�!     �   "   #   =       5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                      "          V       _�!     �   "   $   >           5�_�                    $        ����                                                                                                                                                                                                                                                                                                                                      "          V       _�!     �   $   %   ?    �   $   %   ?      Gexport const login = (username, password) => new Promise((resolve) => {   	request.post(api('login'))   			.send({   			user: username,   			password,   		})   		.end((err, res) => {   			const userCredentials = {};   =			userCredentials['X-Auth-Token'] = res.body.data.authToken;   7			userCredentials['X-User-Id'] = res.body.data.userId;   			resolve(userCredentials);   		});   });5�_�                    $        ����                                                                                                                                                                                                                                                                                                                                      "          V       _�!     �   #   %        5�_�                     $       ����                                                                                                                                                                                                                                                                                                                                      "          V       _�!	     �   #   %   K      Jexport const botLogin = (username, password) => new Promise((resolve) => {5��