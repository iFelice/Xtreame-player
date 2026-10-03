.class public final LL2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL2/c;
.implements LM2/h;
.implements LL2/g;


# static fields
.field public static final D:Z


# instance fields
.field public A:Z

.field public final B:Ljava/lang/RuntimeException;

.field public C:I

.field public final a:Ljava/lang/String;

.field public final b:LQ2/e;

.field public final c:Ljava/lang/Object;

.field public final d:LL2/e;

.field public final e:LL2/d;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/f;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Class;

.field public final j:LL2/a;

.field public final k:I

.field public final l:I

.field public final m:Lcom/bumptech/glide/g;

.field public final n:LM2/i;

.field public final o:Ljava/util/List;

.field public final p:LN2/f;

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Ly2/D;

.field public s:Ly2/k;

.field public t:J

.field public volatile u:Ly2/p;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlideRequest"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, LL2/h;->D:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/f;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LL2/a;IILcom/bumptech/glide/g;LM2/i;Ljava/util/ArrayList;LL2/d;Ly2/p;LN2/f;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    sget-object v2, LP2/g;->a:Lf/v;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-boolean v3, LL2/h;->D:Z

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v4

    .line 23
    :goto_0
    iput-object v3, v0, LL2/h;->a:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, LQ2/e;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, v0, LL2/h;->b:LQ2/e;

    .line 31
    .line 32
    move-object v3, p3

    .line 33
    iput-object v3, v0, LL2/h;->c:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    iput-object v3, v0, LL2/h;->f:Landroid/content/Context;

    .line 37
    .line 38
    iput-object v1, v0, LL2/h;->g:Lcom/bumptech/glide/f;

    .line 39
    .line 40
    move-object v3, p4

    .line 41
    iput-object v3, v0, LL2/h;->h:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v3, p5

    .line 44
    iput-object v3, v0, LL2/h;->i:Ljava/lang/Class;

    .line 45
    .line 46
    move-object v3, p6

    .line 47
    iput-object v3, v0, LL2/h;->j:LL2/a;

    .line 48
    .line 49
    move v3, p7

    .line 50
    iput v3, v0, LL2/h;->k:I

    .line 51
    .line 52
    move v3, p8

    .line 53
    iput v3, v0, LL2/h;->l:I

    .line 54
    .line 55
    move-object v3, p9

    .line 56
    iput-object v3, v0, LL2/h;->m:Lcom/bumptech/glide/g;

    .line 57
    .line 58
    move-object v3, p10

    .line 59
    iput-object v3, v0, LL2/h;->n:LM2/i;

    .line 60
    .line 61
    iput-object v4, v0, LL2/h;->d:LL2/e;

    .line 62
    .line 63
    move-object/from16 v3, p11

    .line 64
    .line 65
    iput-object v3, v0, LL2/h;->o:Ljava/util/List;

    .line 66
    .line 67
    move-object/from16 v3, p12

    .line 68
    .line 69
    iput-object v3, v0, LL2/h;->e:LL2/d;

    .line 70
    .line 71
    move-object/from16 v3, p13

    .line 72
    .line 73
    iput-object v3, v0, LL2/h;->u:Ly2/p;

    .line 74
    .line 75
    move-object/from16 v3, p14

    .line 76
    .line 77
    iput-object v3, v0, LL2/h;->p:LN2/f;

    .line 78
    .line 79
    iput-object v2, v0, LL2/h;->q:Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    iput v2, v0, LL2/h;->C:I

    .line 83
    .line 84
    iget-object v2, v0, LL2/h;->B:Ljava/lang/RuntimeException;

    .line 85
    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    iget-object v1, v1, Lcom/bumptech/glide/f;->h:Le0/u;

    .line 89
    .line 90
    iget-object v1, v1, Le0/u;->a:Ljava/util/Map;

    .line 91
    .line 92
    const-class v2, Lcom/bumptech/glide/d;

    .line 93
    .line 94
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    const-string v2, "Glide request origin trace"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, v0, LL2/h;->B:Ljava/lang/RuntimeException;

    .line 108
    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LL2/h;->C:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LL2/h;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LL2/h;->b:LQ2/e;

    .line 6
    .line 7
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LL2/h;->n:LM2/i;

    .line 11
    .line 12
    invoke-interface {v0, p0}, LM2/i;->f(LM2/h;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, LL2/h;->s:Ly2/k;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Ly2/k;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ly2/p;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, v0, Ly2/k;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ly2/t;

    .line 27
    .line 28
    iget-object v0, v0, Ly2/k;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, LL2/g;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ly2/t;->j(LL2/g;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, LL2/h;->s:Ly2/k;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, LL2/h;->w:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LL2/h;->j:LL2/a;

    .line 6
    .line 7
    iget-object v1, v0, LL2/a;->M:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object v1, p0, LL2/h;->w:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget v1, v0, LL2/a;->N:I

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, LL2/a;->a0:Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    iget-object v2, p0, LL2/h;->f:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-static {v2, v2, v1, v0}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, LL2/h;->w:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, LL2/h;->w:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    return-object v0
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, LL2/h;->A:Z

    .line 5
    .line 6
    if-nez v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, LL2/h;->b:LQ2/e;

    .line 9
    .line 10
    invoke-virtual {v1}, LQ2/e;->a()V

    .line 11
    .line 12
    .line 13
    iget v1, p0, LL2/h;->C:I

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, LL2/h;->b()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, LL2/h;->r:Ly2/D;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iput-object v3, p0, LL2/h;->r:Ly2/D;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v3

    .line 34
    :goto_0
    iget-object v3, p0, LL2/h;->e:LL2/d;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v3, p0}, LL2/d;->c(LL2/c;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object v3, p0, LL2/h;->n:LM2/i;

    .line 45
    .line 46
    invoke-virtual {p0}, LL2/h;->c()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3, v4}, LM2/i;->i(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iput v2, p0, LL2/h;->C:I

    .line 54
    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, LL2/h;->u:Ly2/p;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ly2/p;->g(Ly2/D;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw v1
.end method

.method public final d(LL2/c;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, LL2/h;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, LL2/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v4, v1, LL2/h;->k:I

    .line 15
    .line 16
    iget v5, v1, LL2/h;->l:I

    .line 17
    .line 18
    iget-object v6, v1, LL2/h;->h:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v7, v1, LL2/h;->i:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v8, v1, LL2/h;->j:LL2/a;

    .line 23
    .line 24
    iget-object v9, v1, LL2/h;->m:Lcom/bumptech/glide/g;

    .line 25
    .line 26
    iget-object v10, v1, LL2/h;->o:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_6

    .line 37
    :cond_1
    const/4 v10, 0x0

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    check-cast v0, LL2/h;

    .line 40
    .line 41
    iget-object v11, v0, LL2/h;->c:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v11

    .line 44
    :try_start_1
    iget v2, v0, LL2/h;->k:I

    .line 45
    .line 46
    iget v12, v0, LL2/h;->l:I

    .line 47
    .line 48
    iget-object v13, v0, LL2/h;->h:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v14, v0, LL2/h;->i:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v15, v0, LL2/h;->j:LL2/a;

    .line 53
    .line 54
    iget-object v3, v0, LL2/h;->m:Lcom/bumptech/glide/g;

    .line 55
    .line 56
    iget-object v0, v0, LL2/h;->o:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_5

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-ne v4, v2, :cond_5

    .line 70
    .line 71
    if-ne v5, v12, :cond_5

    .line 72
    .line 73
    sget-object v2, LP2/o;->a:[C

    .line 74
    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    if-nez v13, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    :goto_2
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    if-nez v8, :cond_4

    .line 93
    .line 94
    if-nez v15, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {v8, v15}, LL2/a;->h(LL2/a;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    :goto_3
    if-ne v9, v3, :cond_5

    .line 104
    .line 105
    if-ne v10, v0, :cond_5

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    const/4 v3, 0x0

    .line 110
    :goto_4
    return v3

    .line 111
    :goto_5
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    throw v0

    .line 113
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    throw v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LL2/h;->e:LL2/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, LL2/d;->getRoot()LL2/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, LL2/d;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LL2/h;->C:I

    .line 5
    .line 6
    const/4 v2, 0x6

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, LL2/h;->A:Z

    .line 5
    .line 6
    if-nez v1, :cond_e

    .line 7
    .line 8
    iget-object v1, p0, LL2/h;->b:LQ2/e;

    .line 9
    .line 10
    invoke-virtual {v1}, LQ2/e;->a()V

    .line 11
    .line 12
    .line 13
    sget v1, LP2/i;->b:I

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, LL2/h;->t:J

    .line 20
    .line 21
    iget-object v1, p0, LL2/h;->h:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    iget v1, p0, LL2/h;->k:I

    .line 27
    .line 28
    iget v3, p0, LL2/h;->l:I

    .line 29
    .line 30
    invoke-static {v1, v3}, LP2/o;->j(II)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget v1, p0, LL2/h;->k:I

    .line 37
    .line 38
    iput v1, p0, LL2/h;->y:I

    .line 39
    .line 40
    iget v1, p0, LL2/h;->l:I

    .line 41
    .line 42
    iput v1, p0, LL2/h;->z:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v1, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, LL2/h;->j:LL2/a;

    .line 53
    .line 54
    iget-object v3, v1, LL2/a;->U:Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    iput-object v3, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    iget v3, v1, LL2/a;->V:I

    .line 61
    .line 62
    if-lez v3, :cond_2

    .line 63
    .line 64
    iget-object v1, v1, LL2/a;->a0:Landroid/content/res/Resources$Theme;

    .line 65
    .line 66
    iget-object v4, p0, LL2/h;->f:Landroid/content/Context;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_1
    invoke-static {v4, v4, v3, v1}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    const/4 v2, 0x5

    .line 86
    :cond_3
    new-instance v1, Ly2/z;

    .line 87
    .line 88
    const-string v3, "Received null model"

    .line 89
    .line 90
    invoke-direct {v1, v3}, Ly2/z;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1, v2}, LL2/h;->i(Ly2/z;I)V

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :cond_4
    iget v1, p0, LL2/h;->C:I

    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    if-eq v1, v3, :cond_d

    .line 102
    .line 103
    const/4 v4, 0x4

    .line 104
    if-ne v1, v4, :cond_5

    .line 105
    .line 106
    iget-object v1, p0, LL2/h;->r:Ly2/D;

    .line 107
    .line 108
    sget-object v2, Lw2/a;->K:Lw2/a;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0, v1, v2, v3}, LL2/h;->k(Ly2/D;Lw2/a;Z)V

    .line 112
    .line 113
    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :cond_5
    iget-object v1, p0, LL2/h;->o:Ljava/util/List;

    .line 117
    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, LL2/e;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    :goto_3
    iput v2, p0, LL2/h;->C:I

    .line 139
    .line 140
    iget v1, p0, LL2/h;->k:I

    .line 141
    .line 142
    iget v4, p0, LL2/h;->l:I

    .line 143
    .line 144
    invoke-static {v1, v4}, LP2/o;->j(II)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    iget v1, p0, LL2/h;->k:I

    .line 151
    .line 152
    iget v4, p0, LL2/h;->l:I

    .line 153
    .line 154
    invoke-virtual {p0, v1, v4}, LL2/h;->l(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    iget-object v1, p0, LL2/h;->n:LM2/i;

    .line 159
    .line 160
    invoke-interface {v1, p0}, LM2/i;->b(LM2/h;)V

    .line 161
    .line 162
    .line 163
    :goto_4
    iget v1, p0, LL2/h;->C:I

    .line 164
    .line 165
    if-eq v1, v3, :cond_9

    .line 166
    .line 167
    if-ne v1, v2, :cond_b

    .line 168
    .line 169
    :cond_9
    iget-object v1, p0, LL2/h;->e:LL2/d;

    .line 170
    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    invoke-interface {v1, p0}, LL2/d;->i(LL2/c;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_b

    .line 178
    .line 179
    :cond_a
    iget-object v1, p0, LL2/h;->n:LM2/i;

    .line 180
    .line 181
    invoke-virtual {p0}, LL2/h;->c()Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v1, v2}, LM2/i;->g(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    sget-boolean v1, LL2/h;->D:Z

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v2, "finished run method in "

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-wide v2, p0, LL2/h;->t:J

    .line 203
    .line 204
    invoke-static {v2, v3}, LP2/i;->a(J)D

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p0, v1}, LL2/h;->h(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_c
    monitor-exit v0

    .line 219
    return-void

    .line 220
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    const-string v2, "Cannot restart a running request"

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 231
    .line 232
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v1

    .line 236
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    throw v1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " this: "

    .line 2
    .line 3
    invoke-static {p1, v0}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, LL2/h;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "GlideRequest"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final i(Ly2/z;I)V
    .locals 4

    .line 1
    const-string v0, "Load failed for ["

    .line 2
    .line 3
    iget-object v1, p0, LL2/h;->b:LQ2/e;

    .line 4
    .line 5
    invoke-virtual {v1}, LQ2/e;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LL2/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, LL2/h;->g:Lcom/bumptech/glide/f;

    .line 15
    .line 16
    iget v2, v2, Lcom/bumptech/glide/f;->i:I

    .line 17
    .line 18
    if-gt v2, p2, :cond_0

    .line 19
    .line 20
    const-string p2, "Glide"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, LL2/h;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "] with dimensions ["

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v0, p0, LL2/h;->y:I

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "x"

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v0, p0, LL2/h;->z:I

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "]"

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    const/4 p2, 0x4

    .line 65
    if-gt v2, p2, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1}, Ly2/z;->e()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 75
    iput-object p2, p0, LL2/h;->s:Ly2/k;

    .line 76
    .line 77
    const/4 v0, 0x5

    .line 78
    iput v0, p0, LL2/h;->C:I

    .line 79
    .line 80
    iget-object v0, p0, LL2/h;->e:LL2/d;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-interface {v0, p0}, LL2/d;->h(LL2/c;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, LL2/h;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    :try_start_1
    iget-object v2, p0, LL2/h;->o:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, LL2/e;

    .line 110
    .line 111
    invoke-virtual {p0}, LL2/h;->e()Z

    .line 112
    .line 113
    .line 114
    check-cast v3, LX4/c;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, LX4/c;->a(Ly2/z;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_2
    iget-object v2, p0, LL2/h;->d:LL2/e;

    .line 124
    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    invoke-virtual {p0}, LL2/h;->e()Z

    .line 128
    .line 129
    .line 130
    check-cast v2, LX4/c;

    .line 131
    .line 132
    invoke-virtual {v2, p1}, LX4/c;->a(Ly2/z;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, LL2/h;->e:LL2/d;

    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-interface {p1, p0}, LL2/d;->i(LL2/c;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_c

    .line 144
    .line 145
    :cond_4
    iget-object p1, p0, LL2/h;->h:Ljava/lang/Object;

    .line 146
    .line 147
    if-nez p1, :cond_7

    .line 148
    .line 149
    iget-object p1, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    iget-object p1, p0, LL2/h;->j:LL2/a;

    .line 154
    .line 155
    iget-object p2, p1, LL2/a;->U:Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    iput-object p2, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    if-nez p2, :cond_6

    .line 160
    .line 161
    iget p2, p1, LL2/a;->V:I

    .line 162
    .line 163
    if-lez p2, :cond_6

    .line 164
    .line 165
    iget-object p1, p1, LL2/a;->a0:Landroid/content/res/Resources$Theme;

    .line 166
    .line 167
    iget-object v2, p0, LL2/h;->f:Landroid/content/Context;

    .line 168
    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :goto_2
    invoke-static {v2, v2, p2, p1}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    :cond_6
    iget-object p2, p0, LL2/h;->x:Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    :cond_7
    if-nez p2, :cond_a

    .line 185
    .line 186
    iget-object p1, p0, LL2/h;->v:Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    if-nez p1, :cond_9

    .line 189
    .line 190
    iget-object p1, p0, LL2/h;->j:LL2/a;

    .line 191
    .line 192
    iget-object p2, p1, LL2/a;->K:Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    iput-object p2, p0, LL2/h;->v:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    if-nez p2, :cond_9

    .line 197
    .line 198
    iget p2, p1, LL2/a;->L:I

    .line 199
    .line 200
    if-lez p2, :cond_9

    .line 201
    .line 202
    iget-object p1, p1, LL2/a;->a0:Landroid/content/res/Resources$Theme;

    .line 203
    .line 204
    iget-object v2, p0, LL2/h;->f:Landroid/content/Context;

    .line 205
    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :goto_3
    invoke-static {v2, v2, p2, p1}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iput-object p1, p0, LL2/h;->v:Landroid/graphics/drawable/Drawable;

    .line 218
    .line 219
    :cond_9
    iget-object p2, p0, LL2/h;->v:Landroid/graphics/drawable/Drawable;

    .line 220
    .line 221
    :cond_a
    if-nez p2, :cond_b

    .line 222
    .line 223
    invoke-virtual {p0}, LL2/h;->c()Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    :cond_b
    iget-object p1, p0, LL2/h;->n:LM2/i;

    .line 228
    .line 229
    invoke-interface {p1, p2}, LM2/i;->d(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .line 231
    .line 232
    :cond_c
    :try_start_2
    iput-boolean v0, p0, LL2/h;->A:Z

    .line 233
    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 236
    :goto_4
    iput-boolean v0, p0, LL2/h;->A:Z

    .line 237
    .line 238
    throw p1

    .line 239
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    throw p1
.end method

.method public final isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LL2/h;->C:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LL2/h;->C:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 16
    :goto_1
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final j(Ly2/D;Ljava/lang/Object;Lw2/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LL2/h;->e()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, LL2/h;->C:I

    .line 6
    .line 7
    iput-object p1, p0, LL2/h;->r:Ly2/D;

    .line 8
    .line 9
    iget-object p1, p0, LL2/h;->g:Lcom/bumptech/glide/f;

    .line 10
    .line 11
    iget p1, p1, Lcom/bumptech/glide/f;->i:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-gt p1, v0, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Finished loading "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " from "

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, " for "

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, LL2/h;->h:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " with size ["

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v0, p0, LL2/h;->y:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, "x"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v0, p0, LL2/h;->z:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "] in "

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-wide v0, p0, LL2/h;->t:J

    .line 78
    .line 79
    invoke-static {v0, v1}, LP2/i;->a(J)D

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " ms"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "Glide"

    .line 96
    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, LL2/h;->e:LL2/d;

    .line 101
    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    invoke-interface {p1, p0}, LL2/d;->e(LL2/c;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, LL2/h;->A:Z

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, LL2/h;->o:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    const-string v1, "Image Downloading  Success : "

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, LL2/e;

    .line 132
    .line 133
    check-cast v2, LX4/c;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-object v2, p2

    .line 139
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p2

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, LL2/h;->d:LL2/e;

    .line 160
    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    move-object v0, p2

    .line 164
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object v0, p0, LL2/h;->p:LN2/f;

    .line 182
    .line 183
    invoke-interface {v0, p3}, LN2/f;->a(Lw2/a;)LN2/e;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    iget-object v0, p0, LL2/h;->n:LM2/i;

    .line 188
    .line 189
    invoke-interface {v0, p2, p3}, LM2/i;->a(Ljava/lang/Object;LN2/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    iput-boolean p1, p0, LL2/h;->A:Z

    .line 193
    .line 194
    return-void

    .line 195
    :goto_1
    iput-boolean p1, p0, LL2/h;->A:Z

    .line 196
    .line 197
    throw p2
.end method

.method public final k(Ly2/D;Lw2/a;Z)V
    .locals 6

    .line 1
    const-string p3, "Expected to receive an object of "

    .line 2
    .line 3
    const-string v0, "Expected to receive a Resource<R> with an object of "

    .line 4
    .line 5
    iget-object v1, p0, LL2/h;->b:LQ2/e;

    .line 6
    .line 7
    invoke-virtual {v1}, LQ2/e;->a()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, LL2/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iput-object v1, p0, LL2/h;->s:Ly2/k;

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ly2/z;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, LL2/h;->i:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " inside, but instead got null."

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ly2/z;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v3}, LL2/h;->i(Ly2/z;I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    invoke-interface {p1}, Ly2/D;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v4, p0, LL2/h;->i:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p3, p0, LL2/h;->e:LL2/d;

    .line 71
    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    invoke-interface {p3, p0}, LL2/d;->b(LL2/c;)Z

    .line 75
    .line 76
    .line 77
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    if-eqz p3, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    :try_start_2
    iput-object v1, p0, LL2/h;->r:Ly2/D;

    .line 82
    .line 83
    const/4 p2, 0x4

    .line 84
    iput p2, p0, LL2/h;->C:I

    .line 85
    .line 86
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    iget-object p2, p0, LL2/h;->u:Ly2/p;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Ly2/p;->g(Ly2/D;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_1
    move-exception p2

    .line 97
    move-object v1, p1

    .line 98
    move-object p1, p2

    .line 99
    goto :goto_4

    .line 100
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, LL2/h;->j(Ly2/D;Ljava/lang/Object;Lw2/a;)V

    .line 101
    .line 102
    .line 103
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-void

    .line 105
    :cond_4
    :goto_1
    :try_start_4
    iput-object v1, p0, LL2/h;->r:Ly2/D;

    .line 106
    .line 107
    new-instance p2, Ly2/z;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p3, p0, LL2/h;->i:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p3, " but instead got "

    .line 120
    .line 121
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const-string p3, ""

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p3, "{"

    .line 137
    .line 138
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p3, "} inside Resource{"

    .line 145
    .line 146
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p3, "}."

    .line 153
    .line 154
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    const-string p3, ""

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 163
    .line 164
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-direct {p2, p3}, Ly2/z;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p2, v3}, LL2/h;->i(Ly2/z;I)V

    .line 175
    .line 176
    .line 177
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    iget-object p2, p0, LL2/h;->u:Ly2/p;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Ly2/p;->g(Ly2/D;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 189
    :catchall_2
    move-exception p1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    iget-object p2, p0, LL2/h;->u:Ly2/p;

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Ly2/p;->g(Ly2/D;)V

    .line 198
    .line 199
    .line 200
    :cond_7
    throw p1
.end method

.method public final l(II)V
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    const-string v14, "finished onSizeReady in "

    .line 8
    .line 9
    const-string v2, "finished setup for calling load in "

    .line 10
    .line 11
    const-string v3, "Got onSizeReady in "

    .line 12
    .line 13
    iget-object v4, v15, LL2/h;->b:LQ2/e;

    .line 14
    .line 15
    invoke-virtual {v4}, LQ2/e;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v13, v15, LL2/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v13

    .line 21
    :try_start_0
    sget-boolean v21, LL2/h;->D:Z

    .line 22
    .line 23
    if-eqz v21, :cond_0

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v5, v15, LL2/h;->t:J

    .line 31
    .line 32
    invoke-static {v5, v6}, LP2/i;->a(J)D

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v15, v3}, LL2/h;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object/from16 v22, v13

    .line 49
    .line 50
    move-object v1, v15

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_0
    :goto_0
    iget v3, v15, LL2/h;->C:I

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    .line 58
    monitor-exit v13

    .line 59
    return-void

    .line 60
    :cond_1
    const/4 v12, 0x2

    .line 61
    iput v12, v15, LL2/h;->C:I

    .line 62
    .line 63
    iget-object v3, v15, LL2/h;->j:LL2/a;

    .line 64
    .line 65
    iget v3, v3, LL2/a;->H:F

    .line 66
    .line 67
    const/high16 v4, -0x80000000

    .line 68
    .line 69
    if-ne v0, v4, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    int-to-float v0, v0

    .line 73
    mul-float v0, v0, v3

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :goto_1
    iput v0, v15, LL2/h;->y:I

    .line 80
    .line 81
    if-ne v1, v4, :cond_3

    .line 82
    .line 83
    move v0, v1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    int-to-float v0, v1

    .line 86
    mul-float v3, v3, v0

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    :goto_2
    iput v0, v15, LL2/h;->z:I

    .line 93
    .line 94
    if-eqz v21, :cond_4

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v1, v15, LL2/h;->t:J

    .line 102
    .line 103
    invoke-static {v1, v2}, LP2/i;->a(J)D

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v15, v0}, LL2/h;->h(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object v1, v15, LL2/h;->u:Ly2/p;

    .line 118
    .line 119
    iget-object v2, v15, LL2/h;->g:Lcom/bumptech/glide/f;

    .line 120
    .line 121
    iget-object v3, v15, LL2/h;->h:Ljava/lang/Object;

    .line 122
    .line 123
    iget-object v0, v15, LL2/h;->j:LL2/a;

    .line 124
    .line 125
    iget-object v4, v0, LL2/a;->R:Lw2/i;

    .line 126
    .line 127
    iget v5, v15, LL2/h;->y:I

    .line 128
    .line 129
    iget v6, v15, LL2/h;->z:I

    .line 130
    .line 131
    iget-object v7, v0, LL2/a;->Y:Ljava/lang/Class;

    .line 132
    .line 133
    iget-object v8, v15, LL2/h;->i:Ljava/lang/Class;

    .line 134
    .line 135
    iget-object v9, v15, LL2/h;->m:Lcom/bumptech/glide/g;

    .line 136
    .line 137
    iget-object v10, v0, LL2/a;->I:Ly2/o;

    .line 138
    .line 139
    iget-object v11, v0, LL2/a;->X:LP2/d;

    .line 140
    .line 141
    iget-boolean v12, v0, LL2/a;->S:Z

    .line 142
    .line 143
    move-object/from16 v17, v14

    .line 144
    .line 145
    iget-boolean v14, v0, LL2/a;->e0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    move-object/from16 v18, v13

    .line 148
    .line 149
    :try_start_1
    iget-object v13, v0, LL2/a;->W:Lw2/l;

    .line 150
    .line 151
    move-object/from16 v19, v13

    .line 152
    .line 153
    iget-boolean v13, v0, LL2/a;->O:Z

    .line 154
    .line 155
    move/from16 v20, v13

    .line 156
    .line 157
    iget-boolean v13, v0, LL2/a;->c0:Z

    .line 158
    .line 159
    move/from16 p1, v13

    .line 160
    .line 161
    iget-boolean v13, v0, LL2/a;->f0:Z

    .line 162
    .line 163
    iget-boolean v0, v0, LL2/a;->d0:Z

    .line 164
    .line 165
    move/from16 p2, v0

    .line 166
    .line 167
    iget-object v0, v15, LL2/h;->q:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 168
    .line 169
    move-object/from16 v22, v18

    .line 170
    .line 171
    move-object/from16 v16, v19

    .line 172
    .line 173
    move/from16 v18, v20

    .line 174
    .line 175
    move/from16 v19, p1

    .line 176
    .line 177
    move/from16 v20, v13

    .line 178
    .line 179
    move v13, v14

    .line 180
    move-object/from16 v23, v17

    .line 181
    .line 182
    move-object/from16 v14, v16

    .line 183
    .line 184
    move/from16 v15, v18

    .line 185
    .line 186
    move/from16 v16, v19

    .line 187
    .line 188
    move/from16 v17, v20

    .line 189
    .line 190
    move/from16 v18, p2

    .line 191
    .line 192
    move-object/from16 v19, p0

    .line 193
    .line 194
    move-object/from16 v20, v0

    .line 195
    .line 196
    :try_start_2
    invoke-virtual/range {v1 .. v20}, Ly2/p;->a(Lcom/bumptech/glide/f;Ljava/lang/Object;Lw2/i;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Ly2/o;LP2/d;ZZLw2/l;ZZZZLL2/g;Ljava/util/concurrent/Executor;)Ly2/k;

    .line 197
    .line 198
    .line 199
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    move-object/from16 v1, p0

    .line 201
    .line 202
    :try_start_3
    iput-object v0, v1, LL2/h;->s:Ly2/k;

    .line 203
    .line 204
    iget v0, v1, LL2/h;->C:I

    .line 205
    .line 206
    const/4 v2, 0x2

    .line 207
    if-eq v0, v2, :cond_5

    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    iput-object v0, v1, LL2/h;->s:Ly2/k;

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :catchall_1
    move-exception v0

    .line 214
    goto :goto_4

    .line 215
    :cond_5
    :goto_3
    if-eqz v21, :cond_6

    .line 216
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    move-object/from16 v2, v23

    .line 220
    .line 221
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-wide v2, v1, LL2/h;->t:J

    .line 225
    .line 226
    invoke-static {v2, v3}, LP2/i;->a(J)D

    .line 227
    .line 228
    .line 229
    move-result-wide v2

    .line 230
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v1, v0}, LL2/h;->h(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    monitor-exit v22

    .line 241
    return-void

    .line 242
    :catchall_2
    move-exception v0

    .line 243
    move-object/from16 v1, p0

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :catchall_3
    move-exception v0

    .line 247
    move-object v1, v15

    .line 248
    move-object/from16 v22, v18

    .line 249
    .line 250
    :goto_4
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    throw v0
.end method

.method public final pause()V
    .locals 2

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, LL2/h;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, LL2/h;->clear()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LL2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LL2/h;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, LL2/h;->i:Ljava/lang/Class;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[model="

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", transcodeClass="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method
