# components/TodoItem.jac

def:pub TodoItem(todo: dict, onToggle: any, onDelete: any, onDecompose: any) -> any {
    return
        <div className="todo-item">
            <input
                type="checkbox"
                checked={todo.completed}
                onChange={lambda -> None { onToggle(todo.id); }}
                className="todo-checkbox"
            />
            
            <span className={("todo-title-completed" if todo.completed else "todo-title")}>
                {todo.title}
            </span>

            {(
                <button
                    onClick={lambda -> None { onDecompose(todo.id); }}
                    className="todo-decompose-btn"
                    title="AI Decompose"
                    style={{"background": "none", "border": "none", "cursor": "pointer", "marginRight": "8px"}}
                >
                    ✨
                </button>
            ) if not todo.completed else None} 

            {(
                <span className="category-badge">{todo.category}</span>
            ) if todo.category and todo.category != "other" else None}

            <button
                onClick={lambda -> None { onDelete(todo.id); }}
                className="todo-delete-btn"
            >
                ×
            </button>
        </div>;
}