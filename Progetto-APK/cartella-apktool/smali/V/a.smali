.class public final LV/a;
.super LU4/b;
.source "SourceFile"


# instance fields
.field public final G:Landroid/widget/EditText;

.field public final H:LV/i;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV/a;->G:Landroid/widget/EditText;

    .line 5
    .line 6
    new-instance v0, LV/i;

    .line 7
    .line 8
    invoke-direct {v0, p1}, LV/i;-><init>(Landroid/widget/EditText;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LV/a;->H:LV/i;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, LV/c;->b:LV/c;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, LV/c;->a:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, LV/c;->b:LV/c;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, LV/c;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    .line 33
    .line 34
    const-class v3, LV/c;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sput-object v2, LV/c;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    :catchall_0
    :try_start_2
    sput-object v1, LV/c;->b:LV/c;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_2
    sget-object v0, LV/c;->b:LV/c;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final X(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, LV/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_2
    new-instance v0, LV/f;

    .line 16
    .line 17
    invoke-direct {v0, p1}, LV/f;-><init>(Landroid/text/method/KeyListener;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final e0(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    instance-of p2, p1, LV/d;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance p2, LV/d;

    .line 7
    .line 8
    iget-object v0, p0, LV/a;->G:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-direct {p2, v0, p1}, LV/d;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method

.method public final g0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LV/a;->H:LV/i;

    .line 2
    .line 3
    iget-boolean v1, v0, LV/i;->I:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean p1, v0, LV/i;->I:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, LU/a;->a()V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :cond_1
    :goto_0
    return-void
.end method
