//START_SLACK_DARK_MOD
// First make sure the wrapper app is loaded
document.addEventListener('DOMContentLoaded', function () {
    let customCss = `
    CSS_PLACEHOLDER
    `;
    let s = document.createElement('style');
    s.type = 'text/css';
    s.innerHTML = customCss;
    document.head.appendChild(s);
});
//END_SLACK_DARK_MOD