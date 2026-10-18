.class public final LE1/Y;
.super LE1/l;
.source "SourceFile"

# interfaces
.implements LE1/V;


# instance fields
.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:I

.field public i:I

.field public j:LE1/U;

.field public k:I

.field public final synthetic l:LE1/a0;


# direct methods
.method public constructor <init>(LE1/a0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE1/Y;->l:LE1/a0;

    .line 2
    .line 3
    invoke-direct {p0}, LE1/l;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, LE1/Y;->h:I

    .line 8
    .line 9
    iput p1, p0, LE1/Y;->k:I

    .line 10
    .line 11
    iput-object p2, p0, LE1/Y;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LE1/Y;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, LE1/Y;->j:LE1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v3, p0, LE1/Y;->k:I

    .line 6
    .line 7
    iget v2, v0, LE1/U;->d:I

    .line 8
    .line 9
    add-int/lit8 v1, v2, 0x1

    .line 10
    .line 11
    iput v1, v0, LE1/U;->d:I

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual/range {v0 .. v5}, LE1/U;->b(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, LE1/Y;->j:LE1/U;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, LE1/Y;->k:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final c(LE1/U;)V
    .locals 9

    .line 1
    new-instance v0, LE1/X;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LE1/X;-><init>(LE1/Y;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LE1/Y;->j:LE1/U;

    .line 7
    .line 8
    iget v7, p1, LE1/U;->e:I

    .line 9
    .line 10
    add-int/lit8 v1, v7, 0x1

    .line 11
    .line 12
    iput v1, p1, LE1/U;->e:I

    .line 13
    .line 14
    iget v8, p1, LE1/U;->d:I

    .line 15
    .line 16
    add-int/lit8 v1, v8, 0x1

    .line 17
    .line 18
    iput v1, p1, LE1/U;->d:I

    .line 19
    .line 20
    new-instance v6, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "memberRouteId"

    .line 26
    .line 27
    iget-object v2, p0, LE1/Y;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v1, p1

    .line 36
    move v3, v8

    .line 37
    move v4, v7

    .line 38
    invoke-virtual/range {v1 .. v6}, LE1/U;->b(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, p1, LE1/U;->h:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v7, p0, LE1/Y;->k:I

    .line 47
    .line 48
    iget-boolean v0, p0, LE1/Y;->g:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v7}, LE1/U;->a(I)V

    .line 53
    .line 54
    .line 55
    iget v0, p0, LE1/Y;->h:I

    .line 56
    .line 57
    if-ltz v0, :cond_0

    .line 58
    .line 59
    iget v1, p0, LE1/Y;->k:I

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, LE1/U;->c(II)V

    .line 62
    .line 63
    .line 64
    const/4 v0, -0x1

    .line 65
    iput v0, p0, LE1/Y;->h:I

    .line 66
    .line 67
    :cond_0
    iget v0, p0, LE1/Y;->i:I

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget v1, p0, LE1/Y;->k:I

    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, LE1/U;->d(II)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    iput p1, p0, LE1/Y;->i:I

    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, LE1/Y;->l:LE1/a0;

    .line 2
    .line 3
    iget-object v1, v0, LE1/a0;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LE1/Y;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LE1/a0;->m()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LE1/Y;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, LE1/Y;->j:LE1/U;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, LE1/Y;->k:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, LE1/U;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LE1/Y;->j:LE1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, LE1/Y;->k:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, LE1/U;->c(II)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput p1, p0, LE1/Y;->h:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, LE1/Y;->i:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LE1/Y;->h(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h(I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LE1/Y;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, LE1/Y;->j:LE1/U;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v4, p0, LE1/Y;->k:I

    .line 9
    .line 10
    new-instance v6, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "unselectReason"

    .line 16
    .line 17
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget v3, v1, LE1/U;->d:I

    .line 21
    .line 22
    add-int/lit8 p1, v3, 0x1

    .line 23
    .line 24
    iput p1, v1, LE1/U;->d:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v2, 0x6

    .line 28
    invoke-virtual/range {v1 .. v6}, LE1/U;->b(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LE1/Y;->j:LE1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, LE1/Y;->k:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, LE1/U;->d(II)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, LE1/Y;->i:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, LE1/Y;->i:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method
