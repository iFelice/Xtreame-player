.class public final Ll/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Ll/e1;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ll/e1;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ll/e1;->b:Z

    .line 6
    iput-boolean p1, p0, Ll/e1;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lp0/G;I)V
    .locals 3

    .line 7
    iput p4, p0, Ll/e1;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p4, v0, :cond_0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p4, Lm2/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, v2}, Lm2/c;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {p3, p2, v1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object p1

    iput-object p1, p0, Ll/e1;->e:Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p4, Lm2/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, v2}, Lm2/e;-><init>(Ljava/lang/Object;I)V

    iput-object p4, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 13
    invoke-virtual {p3, p2, v1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object p1

    iput-object p1, p0, Ll/e1;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb6/b;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Ll/e1;->a:I

    .line 19
    iget-boolean v0, p1, Lb6/b;->a:Z

    iput-boolean v0, p0, Ll/e1;->b:Z

    .line 20
    iget-object v0, p1, Lb6/b;->b:[Ljava/lang/String;

    iput-object v0, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 21
    iget-object v0, p1, Lb6/b;->c:[Ljava/lang/String;

    iput-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 22
    iget-boolean p1, p1, Lb6/b;->d:Z

    iput-boolean p1, p0, Ll/e1;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 15
    iput v0, p0, Ll/e1;->a:I

    .line 16
    iput-boolean p1, p0, Ll/e1;->b:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Lb6/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    iget-object v2, v2, Lb6/a;->G:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v0, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "no cipher suites for cleartext connections"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final b(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ll/e1;->d(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    move p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Ll/e1;->d(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    .line 33
    .line 34
    move p1, p2

    .line 35
    :goto_0
    return p1
.end method

.method public final c(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    rem-int/2addr p1, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    rem-int p2, p1, p2

    .line 21
    .line 22
    iget-object v0, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    .line 28
    .line 29
    move p1, p2

    .line 30
    :goto_0
    return p1
.end method

.method public final d(II)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v3, v1

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-gt v4, v3, :cond_1

    .line 18
    .line 19
    add-int v5, v4, v3

    .line 20
    .line 21
    ushr-int/2addr v5, v1

    .line 22
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ge v6, p1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v4, v5, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sub-int/2addr v4, v1

    .line 36
    const/4 v3, -0x1

    .line 37
    if-ltz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v4, v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v0, -0x1

    .line 51
    :goto_1
    if-eq v0, v3, :cond_3

    .line 52
    .line 53
    iget-object v3, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/lit8 v4, v0, 0x1

    .line 62
    .line 63
    invoke-virtual {p0, v0, p2}, Ll/e1;->c(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, v1

    .line 68
    if-ne v0, p2, :cond_4

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    :cond_4
    :goto_2
    if-ge v4, p1, :cond_7

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    if-ne v0, p2, :cond_5

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    if-le v0, p2, :cond_6

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    add-int/2addr v0, v1

    .line 96
    if-le v0, p2, :cond_8

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    :cond_8
    return v3
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/e1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget v0, p0, Ll/e1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v1, p0, Ll/e1;->b:Z

    .line 13
    .line 14
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 15
    .line 16
    iget-object v1, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lp0/q;

    .line 19
    .line 20
    new-instance v2, LB0/N0;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, p0, v0, v3}, LB0/N0;-><init>(Ljava/lang/Object;ZI)V

    .line 24
    .line 25
    .line 26
    check-cast v1, Lp0/I;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput-boolean v1, p0, Ll/e1;->b:Z

    .line 38
    .line 39
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 40
    .line 41
    iget-object v2, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lp0/q;

    .line 44
    .line 45
    new-instance v3, LB0/N0;

    .line 46
    .line 47
    invoke-direct {v3, p0, v0, v1}, LB0/N0;-><init>(Ljava/lang/Object;ZI)V

    .line 48
    .line 49
    .line 50
    check-cast v2, Lp0/I;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget v0, p0, Ll/e1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean p1, p0, Ll/e1;->c:Z

    .line 12
    .line 13
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lp0/q;

    .line 20
    .line 21
    new-instance v1, LB0/M0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2, p0, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Lp0/I;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-boolean v0, p0, Ll/e1;->c:Z

    .line 34
    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iput-boolean p1, p0, Ll/e1;->c:Z

    .line 39
    .line 40
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lp0/q;

    .line 47
    .line 48
    new-instance v1, LB0/M0;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, v2, p0, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    check-cast v0, Lp0/I;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs h([Lb6/l;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ll/e1;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p1

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v2, v2, Lb6/l;->G:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object v0, p0, Ll/e1;->e:Ljava/lang/Object;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "At least one TlsVersion is required"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "no TLS versions for cleartext connections"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
