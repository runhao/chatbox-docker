const reportWebVitals = (onPerfEntry?: (metric: any) => void) => {
    if (onPerfEntry && typeof onPerfEntry === 'function') {
        import('web-vitals').then(({ onCLS, onFID, onFCP, onLCP }) => {
            onCLS(onPerfEntry)
            onFID(onPerfEntry)
            onFCP(onPerfEntry)
            onLCP(onPerfEntry)
        })
    }
}

export default reportWebVitals
