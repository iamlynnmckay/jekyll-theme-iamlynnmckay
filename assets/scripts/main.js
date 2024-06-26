

const state = {
    element: undefined
};

function styleElementWithIdOfFragment() {
    {
        const element = state.element
        if (element) {
            element.classList.toggle('highlighted')
        }
    }
    {
        const fragment = window.location.hash.substring(1); // Get fragment identifier without #
        if (fragment) {
            const element = document.getElementById(fragment);
            if (element) {
                element.classList.toggle('highlighted'); // Add CSS class to highlight
            }
            state.element = element;
        }
    }
}

// Run the function on page load
window.onload = styleElementWithIdOfFragment
window.addEventListener('hashchange', styleElementWithIdOfFragment);
