

const search = instantsearch ({
    appId: '489HLI3B0A',
    apiKey: 'afb715b7a8626e4dcbc991783fa9acd9',
    indexName: 'instant_search',
    urlSync:true
});

search.addWidget(
    instantsearch.widgets.searchBox({
        container:'search-input' 
    })
);

search.addWidget(
    instantsearch.widgets.hits({
        container:'#hits',
        hitsPerPage:6,
        template:{
            item: document.getElementById('hit-template').innerHTML,
            empty: "pas de résultat pour cette recherche <em>\"{{query}}\" </em>"
        }
    })
)

search.addWidget(
    instantsearch.widgets.pagination({
        container:'pagination'
    })
);

search.start();