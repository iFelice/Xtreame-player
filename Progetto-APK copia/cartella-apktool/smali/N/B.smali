.class public abstract LN/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public final J:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, LN/B;->G:I

    .line 10
    iput-object p2, p0, LN/B;->J:Ljava/io/Serializable;

    .line 11
    iput p3, p0, LN/B;->I:I

    .line 12
    iput p4, p0, LN/B;->H:I

    return-void
.end method

.method public constructor <init>(Lv6/f;)V
    .locals 1

    .line 1
    const-string v0, "map"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LN/B;->J:Ljava/io/Serializable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LN/B;->H:I

    .line 5
    iget p1, p1, Lv6/f;->N:I

    .line 6
    iput p1, p0, LN/B;->I:I

    .line 7
    invoke-virtual {p0}, LN/B;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LN/B;->J:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Lv6/f;

    .line 4
    .line 5
    iget v0, v0, Lv6/f;->N:I

    .line 6
    .line 7
    iget v1, p0, LN/B;->I:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public abstract b(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract c(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public final d(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, LN/B;->H:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LN/B;->b(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, LN/B;->G:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, LN/B;->J:Ljava/io/Serializable;

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public final e()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, LN/B;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LN/B;->J:Ljava/io/Serializable;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lv6/f;

    .line 7
    .line 8
    iget v2, v2, Lv6/f;->L:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lv6/f;

    .line 13
    .line 14
    iget-object v1, v1, Lv6/f;->I:[I

    .line 15
    .line 16
    aget v1, v1, v0

    .line 17
    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, LN/B;->G:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final f(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, LN/B;->H:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, LN/B;->c(Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, LN/B;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p2}, LN/B;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-static {p1}, LN/N;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v1, v0, LN/a;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast v0, LN/a;

    .line 34
    .line 35
    iget-object v0, v0, LN/a;->a:LN/b;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v1, LN/b;

    .line 39
    .line 40
    invoke-direct {v1, v0}, LN/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :goto_0
    if-nez v0, :cond_3

    .line 45
    .line 46
    new-instance v0, LN/b;

    .line 47
    .line 48
    invoke-direct {v0}, LN/b;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {p1, v0}, LN/N;->m(Landroid/view/View;LN/b;)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, LN/B;->G:I

    .line 55
    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget p2, p0, LN/B;->I:I

    .line 60
    .line 61
    invoke-static {p1, p2}, LN/N;->g(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, LN/B;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LN/B;->J:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v1, Lv6/f;

    .line 6
    .line 7
    iget v1, v1, Lv6/f;->L:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LN/B;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LN/B;->H:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LN/B;->J:Ljava/io/Serializable;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lv6/f;

    .line 13
    .line 14
    invoke-virtual {v2}, Lv6/f;->c()V

    .line 15
    .line 16
    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Lv6/f;

    .line 19
    .line 20
    iget v3, p0, LN/B;->H:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lv6/f;->l(I)V

    .line 23
    .line 24
    .line 25
    iput v1, p0, LN/B;->H:I

    .line 26
    .line 27
    check-cast v0, Lv6/f;

    .line 28
    .line 29
    iget v0, v0, Lv6/f;->N:I

    .line 30
    .line 31
    iput v0, p0, LN/B;->I:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Call next() before removing element from the iterator."

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
