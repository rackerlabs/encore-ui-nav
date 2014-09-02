/* jshint node:true */

module.exports = {
    production: {
        'user': 'encorecloudfiles',
        'key': process.env.cloudFilesApi,
        'region': 'DFW',
        'upload': [{
            'container': 'encore-ui-nav',
            'src': 'src/*.json',
            'dest': '',
            'stripcomponents': 1,
            'headers': { 'Access-Control-Allow-Origin': '*'},
            'purge': {
                'emails': ['jay.parlar@rackspace.com'],
                'files': ['encoreNav.json']
            }
        }]
    }
};
