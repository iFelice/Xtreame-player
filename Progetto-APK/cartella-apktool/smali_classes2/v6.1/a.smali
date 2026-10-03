.class public final Lv6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements LE6/a;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:I

.field public J:I

.field public final K:Lu6/f;


# direct methods
.method public constructor <init>(Lv6/b;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lv6/a;->G:I

    .line 10
    const-string v0, "list"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lv6/a;->K:Lu6/f;

    .line 12
    iput p2, p0, Lv6/a;->H:I

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lv6/a;->I:I

    .line 14
    invoke-static {p1}, Lv6/b;->i(Lv6/b;)I

    move-result p1

    iput p1, p0, Lv6/a;->J:I

    return-void
.end method

.method public constructor <init>(Lv6/c;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lv6/a;->G:I

    .line 3
    const-string v0, "list"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lv6/a;->K:Lu6/f;

    .line 5
    iput p2, p0, Lv6/a;->H:I

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lv6/a;->I:I

    .line 7
    invoke-static {p1}, Lv6/c;->i(Lv6/c;)I

    move-result p1

    iput p1, p0, Lv6/a;->J:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    check-cast v0, Lv6/b;

    .line 4
    .line 5
    iget-object v0, v0, Lv6/b;->K:Lv6/c;

    .line 6
    .line 7
    invoke-static {v0}, Lv6/c;->i(Lv6/c;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lv6/a;->J:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lv6/a;->b()V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lv6/c;

    .line 13
    .line 14
    iget v1, p0, Lv6/a;->H:I

    .line 15
    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    iput v3, p0, Lv6/a;->H:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lv6/c;->add(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Lv6/a;->I:I

    .line 24
    .line 25
    invoke-static {v0}, Lv6/c;->i(Lv6/c;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lv6/a;->J:I

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lv6/a;->a()V

    .line 33
    .line 34
    .line 35
    check-cast v0, Lv6/b;

    .line 36
    .line 37
    iget v1, p0, Lv6/a;->H:I

    .line 38
    .line 39
    add-int/lit8 v3, v1, 0x1

    .line 40
    .line 41
    iput v3, p0, Lv6/a;->H:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lv6/b;->add(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v2, p0, Lv6/a;->I:I

    .line 47
    .line 48
    invoke-static {v0}, Lv6/b;->i(Lv6/b;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lv6/a;->J:I

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    check-cast v0, Lv6/c;

    .line 4
    .line 5
    invoke-static {v0}, Lv6/c;->i(Lv6/c;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lv6/a;->J:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lv6/a;->H:I

    .line 11
    .line 12
    check-cast v0, Lv6/c;

    .line 13
    .line 14
    iget v0, v0, Lv6/c;->H:I

    .line 15
    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    return v2

    .line 20
    :pswitch_0
    iget v1, p0, Lv6/a;->H:I

    .line 21
    .line 22
    check-cast v0, Lv6/b;

    .line 23
    .line 24
    iget v0, v0, Lv6/b;->I:I

    .line 25
    .line 26
    if-ge v1, v0, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    return v2

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 3

    .line 1
    iget v0, p0, Lv6/a;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lv6/a;->H:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1

    .line 14
    :pswitch_0
    iget v0, p0, Lv6/a;->H:I

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_1
    return v1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv6/a;->b()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lv6/a;->H:I

    .line 12
    .line 13
    check-cast v0, Lv6/c;

    .line 14
    .line 15
    iget v2, v0, Lv6/c;->H:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, Lv6/a;->H:I

    .line 22
    .line 23
    iput v1, p0, Lv6/a;->I:I

    .line 24
    .line 25
    iget-object v0, v0, Lv6/c;->G:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v0, v0, v1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lv6/a;->a()V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lv6/a;->H:I

    .line 40
    .line 41
    check-cast v0, Lv6/b;

    .line 42
    .line 43
    iget v2, v0, Lv6/b;->I:I

    .line 44
    .line 45
    if-ge v1, v2, :cond_1

    .line 46
    .line 47
    add-int/lit8 v2, v1, 0x1

    .line 48
    .line 49
    iput v2, p0, Lv6/a;->H:I

    .line 50
    .line 51
    iput v1, p0, Lv6/a;->I:I

    .line 52
    .line 53
    iget-object v2, v0, Lv6/b;->G:[Ljava/lang/Object;

    .line 54
    .line 55
    iget v0, v0, Lv6/b;->H:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    aget-object v0, v2, v0

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lv6/a;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lv6/a;->H:I

    .line 7
    .line 8
    return v0

    .line 9
    :pswitch_0
    iget v0, p0, Lv6/a;->H:I

    .line 10
    .line 11
    return v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv6/a;->b()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lv6/a;->H:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    iput v1, p0, Lv6/a;->H:I

    .line 18
    .line 19
    iput v1, p0, Lv6/a;->I:I

    .line 20
    .line 21
    check-cast v0, Lv6/c;

    .line 22
    .line 23
    iget-object v0, v0, Lv6/c;->G:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v0, v0, v1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lv6/a;->a()V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lv6/a;->H:I

    .line 38
    .line 39
    if-lez v1, :cond_1

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    iput v1, p0, Lv6/a;->H:I

    .line 44
    .line 45
    iput v1, p0, Lv6/a;->I:I

    .line 46
    .line 47
    check-cast v0, Lv6/b;

    .line 48
    .line 49
    iget-object v2, v0, Lv6/b;->G:[Ljava/lang/Object;

    .line 50
    .line 51
    iget v0, v0, Lv6/b;->H:I

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    aget-object v0, v2, v0

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lv6/a;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lv6/a;->H:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    return v0

    .line 11
    :pswitch_0
    iget v0, p0, Lv6/a;->H:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    return v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    const-string v2, "Call next() or previous() before removing element from the iterator."

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lv6/a;->b()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lv6/a;->I:I

    .line 15
    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    check-cast v0, Lv6/c;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lv6/c;->c(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lv6/a;->I:I

    .line 24
    .line 25
    iput v1, p0, Lv6/a;->H:I

    .line 26
    .line 27
    iput v3, p0, Lv6/a;->I:I

    .line 28
    .line 29
    invoke-static {v0}, Lv6/c;->i(Lv6/c;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lv6/a;->J:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lv6/a;->a()V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lv6/a;->I:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_1

    .line 52
    .line 53
    check-cast v0, Lv6/b;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lv6/b;->c(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lv6/a;->I:I

    .line 59
    .line 60
    iput v1, p0, Lv6/a;->H:I

    .line 61
    .line 62
    iput v3, p0, Lv6/a;->I:I

    .line 63
    .line 64
    invoke-static {v0}, Lv6/b;->i(Lv6/b;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lv6/a;->J:I

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv6/a;->K:Lu6/f;

    .line 2
    .line 3
    iget v1, p0, Lv6/a;->G:I

    .line 4
    .line 5
    const-string v2, "Call next() or previous() before replacing element from the iterator."

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lv6/a;->b()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lv6/a;->I:I

    .line 15
    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    check-cast v0, Lv6/c;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lv6/c;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lv6/a;->a()V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lv6/a;->I:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    check-cast v0, Lv6/b;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lv6/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
