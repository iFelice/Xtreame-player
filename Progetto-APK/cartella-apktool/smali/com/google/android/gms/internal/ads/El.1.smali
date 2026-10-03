.class public final Lcom/google/android/gms/internal/ads/El;
.super Lcom/google/android/gms/internal/ads/xi;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public final A:Lp3/a;

.field public final B:Landroid/content/Context;

.field public final C:Lcom/google/android/gms/internal/ads/Gl;

.field public final D:Lcom/google/android/gms/internal/ads/is;

.field public final E:Ljava/util/HashMap;

.field public final F:Ljava/util/ArrayList;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Lcom/google/android/gms/internal/ads/Il;

.field public final l:Lcom/google/android/gms/internal/ads/Ll;

.field public final m:Lcom/google/android/gms/internal/ads/Sl;

.field public final n:Lcom/google/android/gms/internal/ads/Kl;

.field public final o:Lcom/google/android/gms/internal/ads/Nl;

.field public final p:Lcom/google/android/gms/internal/ads/EJ;

.field public final q:Lcom/google/android/gms/internal/ads/EJ;

.field public final r:Lcom/google/android/gms/internal/ads/EJ;

.field public final s:Lcom/google/android/gms/internal/ads/EJ;

.field public final t:Lcom/google/android/gms/internal/ads/EJ;

.field public u:Lcom/google/android/gms/internal/ads/dm;

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lcom/google/android/gms/internal/ads/Od;

.field public final z:Lcom/google/android/gms/internal/ads/H4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 3
    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "3010"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "3008"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-string v2, "1005"

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    const-string v2, "1009"

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    const-string v2, "2011"

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    const-string v2, "2007"

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/wi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/Il;Lcom/google/android/gms/internal/ads/Ll;Lcom/google/android/gms/internal/ads/Sl;Lcom/google/android/gms/internal/ads/Kl;Lcom/google/android/gms/internal/ads/Nl;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/Od;Lcom/google/android/gms/internal/ads/H4;Lp3/a;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Gl;Lcom/google/android/gms/internal/ads/is;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 3
    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 13
    .line 14
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->m:Lcom/google/android/gms/internal/ads/Sl;

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->o:Lcom/google/android/gms/internal/ads/Nl;

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->p:Lcom/google/android/gms/internal/ads/EJ;

    .line 25
    .line 26
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->q:Lcom/google/android/gms/internal/ads/EJ;

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->r:Lcom/google/android/gms/internal/ads/EJ;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->s:Lcom/google/android/gms/internal/ads/EJ;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->t:Lcom/google/android/gms/internal/ads/EJ;

    .line 37
    .line 38
    move-object v1, p13

    .line 39
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->y:Lcom/google/android/gms/internal/ads/Od;

    .line 40
    .line 41
    move-object/from16 v1, p14

    .line 42
    .line 43
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->z:Lcom/google/android/gms/internal/ads/H4;

    .line 44
    .line 45
    move-object/from16 v1, p15

    .line 46
    .line 47
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->A:Lp3/a;

    .line 48
    .line 49
    move-object/from16 v1, p16

    .line 50
    .line 51
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->B:Landroid/content/Context;

    .line 52
    .line 53
    move-object/from16 v1, p17

    .line 54
    .line 55
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->C:Lcom/google/android/gms/internal/ads/Gl;

    .line 56
    .line 57
    move-object/from16 v1, p18

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->D:Lcom/google/android/gms/internal/ads/is;

    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->E:Ljava/util/HashMap;

    .line 67
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/El;->F:Ljava/util/ArrayList;

    .line 74
    .line 75
    return-void
.end method

.method public static n(Landroid/view/View;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->S9:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 23
    .line 24
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 25
    .line 26
    invoke-static {p0}, Lo3/O;->I(Landroid/view/View;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    sget-object p0, Lcom/google/android/gms/internal/ads/Q7;->T9:Lcom/google/android/gms/internal/ads/J7;

    .line 48
    .line 49
    iget-object v0, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    int-to-long v0, p0

    .line 62
    cmp-long p0, v5, v0

    .line 63
    .line 64
    if-ltz p0, :cond_0

    .line 65
    .line 66
    return v3

    .line 67
    :cond_0
    return v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    return v3

    .line 86
    :cond_2
    return v2
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ll;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Bl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Bl;-><init>(Lcom/google/android/gms/internal/ads/El;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x7

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/Pf;

    .line 27
    .line 28
    const/16 v3, 0x1b

    .line 29
    .line 30
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/xi;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final declared-synchronized b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/El;->w:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C1:Lcom/google/android/gms/internal/ads/J7;

    .line 9
    .line 10
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 11
    .line 12
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->k0:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->E:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/El;->E:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    if-nez p4, :cond_5

    .line 72
    .line 73
    sget-object p4, Lcom/google/android/gms/internal/ads/Q7;->E3:Lcom/google/android/gms/internal/ads/J7;

    .line 74
    .line 75
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 76
    .line 77
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 78
    .line 79
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    check-cast p4, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-eqz p4, :cond_4

    .line 90
    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/view/View;

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/El;->n(Landroid/view/View;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/El;->s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :cond_4
    :goto_0
    monitor-exit p0

    .line 139
    return-void

    .line 140
    :cond_5
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/El;->s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :goto_1
    monitor-exit p0

    .line 146
    throw p1
.end method

.method public final declared-synchronized c(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->m:Lcom/google/android/gms/internal/ads/Sl;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Sl;->e:Lcom/google/android/gms/internal/ads/Yl;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Sl;->c:Lcom/google/android/gms/internal/ads/Kl;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Yl;->a()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/Mf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :try_start_2
    const-string v1, "web view can not be obtained"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/El;->q()Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 54
    .line 55
    move-object v1, p1

    .line 56
    move-object v2, p2

    .line 57
    move-object v3, p3

    .line 58
    move-object v4, p4

    .line 59
    move v5, p5

    .line 60
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Ll;->h(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/El;->x:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-nez p2, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lr/f;

    .line 81
    .line 82
    const/4 p3, 0x0

    .line 83
    invoke-direct {p2, p3}, Lr/m;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const-string p3, "onSdkAdUserInteractionClick"

    .line 87
    .line 88
    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit p0

    .line 98
    throw p1
.end method

.method public final declared-synchronized d(Landroid/widget/FrameLayout;I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Pa:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    .line 4
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 5
    .line 6
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    .line 27
    .line 28
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/Ql;

    .line 38
    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/Cl;

    .line 40
    .line 41
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/Cl;-><init>(Lcom/google/android/gms/internal/ads/El;Landroid/widget/FrameLayout;ZI)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_0
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ll;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ll;->i(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final g(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->P4:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Il;->n:Lcom/google/android/gms/internal/ads/te;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 29
    .line 30
    const/16 v2, 0x19

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v1

    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->T()Lcom/google/android/gms/internal/ads/mq;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/El;->t(Landroid/view/View;Lcom/google/android/gms/internal/ads/mq;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final declared-synchronized h(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ll;->d(Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized i(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ll;->j(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized j(Landroid/view/View;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ll;->c(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized k(Lcom/google/android/gms/internal/ads/dm;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->A1:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    .line 4
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 5
    .line 6
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/Al;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/Al;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/dm;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/El;->u(Lcom/google/android/gms/internal/ads/dm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final declared-synchronized l(Lcom/google/android/gms/internal/ads/dm;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->A1:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    .line 4
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 5
    .line 6
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/Al;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/Al;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/dm;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/El;->v(Lcom/google/android/gms/internal/ads/dm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final declared-synchronized m()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ll;->v()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized o(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/El;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ll;->b(Landroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/El;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final declared-synchronized p()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ll;->zza()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized q()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Ad should be associated with an ad view before calling getMediaviewScaleType()"

    .line 7
    .line 8
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dm;->zzj()LR3/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView$ScaleType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Sl;->k:Landroid/widget/ImageView$ScaleType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :goto_0
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public final r()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->P4:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "Google"

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->m:LD4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/El;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0

    .line 43
    throw v1

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/El;->x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/mq;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final declared-synchronized s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->m:Lcom/google/android/gms/internal/ads/Sl;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Sl;->a(Lcom/google/android/gms/internal/ads/dm;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/El;->q()Landroid/widget/ImageView$ScaleType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 14
    .line 15
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/Ll;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/El;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public final t(Landroid/view/View;Lcom/google/android/gms/internal/ads/mq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kl;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 22
    .line 23
    iget-object v0, v0, Lk3/l;->v:Lc4/y;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 29
    .line 30
    invoke-static {p2, p1}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final declared-synchronized u(Lcom/google/android/gms/internal/ads/dm;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/El;->v:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->m:Lcom/google/android/gms/internal/ads/Sl;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/Ha;

    .line 16
    .line 17
    const/16 v2, 0x1a

    .line 18
    .line 19
    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Sl;->g:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzm()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzn()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v6, p1

    .line 42
    move-object v7, p1

    .line 43
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Ll;->f(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->v2:Lcom/google/android/gms/internal/ads/J7;

    .line 47
    .line 48
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 49
    .line 50
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->z:Lcom/google/android/gms/internal/ads/H4;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/E4;->a(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C1:Lcom/google/android/gms/internal/ads/J7;

    .line 82
    .line 83
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v1, 0x3

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 99
    .line 100
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ov;->k0:Z

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->j0:Lorg/json/JSONObject;

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 126
    .line 127
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dm;->zzl()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/El;->E:Ljava/util/HashMap;

    .line 138
    .line 139
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroid/view/View;

    .line 151
    .line 152
    if-eqz v3, :cond_3

    .line 153
    .line 154
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/El;->B:Landroid/content/Context;

    .line 155
    .line 156
    new-instance v5, Lcom/google/android/gms/internal/ads/H5;

    .line 157
    .line 158
    invoke-direct {v5, v4, v3}, Lcom/google/android/gms/internal/ads/H5;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/El;->F:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance v3, Lcom/google/android/gms/internal/ads/Dl;

    .line 167
    .line 168
    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/Dl;-><init>(Lcom/google/android/gms/internal/ads/El;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/H5;->R:Ljava/util/HashSet;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzi()Lcom/google/android/gms/internal/ads/H5;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzi()Lcom/google/android/gms/internal/ads/H5;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->y:Lcom/google/android/gms/internal/ads/Od;

    .line 191
    .line 192
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/H5;->R:Ljava/util/HashSet;

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return-void

    .line 202
    :cond_5
    :goto_3
    monitor-exit p0

    .line 203
    return-void

    .line 204
    :goto_4
    monitor-exit p0

    .line 205
    throw p1
.end method

.method public final v(Lcom/google/android/gms/internal/ads/dm;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzl()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Ll;->m(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzi()Lcom/google/android/gms/internal/ads/H5;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dm;->zzi()Lcom/google/android/gms/internal/ads/H5;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/H5;->R:Ljava/util/HashSet;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->y:Lcom/google/android/gms/internal/ads/Od;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 53
    .line 54
    return-void
.end method

.method public final declared-synchronized w()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/El;->v:Z

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/Bl;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Bl;-><init>(Lcom/google/android/gms/internal/ads/El;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/El;->j:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->c:Lcom/google/android/gms/internal/ads/Cj;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/I7;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/I7;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public final x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/mq;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_15

    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "Omid display and video webview are null. Skipping initialization."

    .line 36
    .line 37
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    const/4 v7, 0x0

    .line 53
    :goto_2
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->N4:Lcom/google/android/gms/internal/ads/J7;

    .line 54
    .line 55
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 56
    .line 57
    iget-object v10, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 58
    .line 59
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const/4 v10, 0x2

    .line 70
    if-eqz v8, :cond_b

    .line 71
    .line 72
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->a()Lcom/google/android/gms/internal/ads/Xu;

    .line 75
    .line 76
    .line 77
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->a()Lcom/google/android/gms/internal/ads/Xu;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xu;->p()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/lit8 v7, v0, -0x1

    .line 88
    .line 89
    if-eqz v7, :cond_9

    .line 90
    .line 91
    if-eq v7, v6, :cond_7

    .line 92
    .line 93
    if-eq v0, v6, :cond_6

    .line 94
    .line 95
    if-eq v0, v10, :cond_5

    .line 96
    .line 97
    const-string v0, "UNKNOWN"

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    const-string v0, "DISPLAY"

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    const-string v0, "VIDEO"

    .line 104
    .line 105
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v4, "Unknown omid media type: "

    .line 108
    .line 109
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, ". Not initializing Omid."

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_7
    if-eqz v3, :cond_8

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    const/4 v7, 0x0

    .line 132
    goto :goto_4

    .line 133
    :cond_8
    const-string v0, "Omid media type was display but there was no display webview."

    .line 134
    .line 135
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_9
    if-eqz v4, :cond_a

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    const/4 v7, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_a
    const-string v0, "Omid media type was video but there was no video webview."

    .line 145
    .line 146
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 151
    .line 152
    move-object v14, v2

    .line 153
    goto :goto_5

    .line 154
    :cond_c
    const-string v0, "javascript"

    .line 155
    .line 156
    move-object v14, v0

    .line 157
    move-object v3, v4

    .line 158
    :goto_5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 159
    .line 160
    .line 161
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->B:Landroid/content/Context;

    .line 162
    .line 163
    sget-object v8, Lk3/l;->A:Lk3/l;

    .line 164
    .line 165
    iget-object v11, v8, Lk3/l;->v:Lc4/y;

    .line 166
    .line 167
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lc4/y;->g(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_d

    .line 175
    .line 176
    const-string v0, "Failed to initialize omid in InternalNativeAd"

    .line 177
    .line 178
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/El;->A:Lp3/a;

    .line 183
    .line 184
    iget v11, v0, Lp3/a;->H:I

    .line 185
    .line 186
    iget v0, v0, Lp3/a;->I:I

    .line 187
    .line 188
    new-instance v12, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v11, "."

    .line 197
    .line 198
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const/4 v0, 0x3

    .line 209
    if-eqz v7, :cond_e

    .line 210
    .line 211
    const/4 v15, 0x3

    .line 212
    const/16 v18, 0x2

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_e
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 216
    .line 217
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-ne v11, v0, :cond_f

    .line 222
    .line 223
    const/4 v0, 0x4

    .line 224
    const/4 v15, 0x2

    .line 225
    const/16 v18, 0x4

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_f
    const/4 v15, 0x2

    .line 229
    const/16 v18, 0x3

    .line 230
    .line 231
    :goto_6
    iget-object v0, v8, Lk3/l;->v:Lc4/y;

    .line 232
    .line 233
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 234
    .line 235
    .line 236
    move-result-object v16

    .line 237
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 238
    .line 239
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/Ov;->l0:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->G4:Lcom/google/android/gms/internal/ads/J7;

    .line 245
    .line 246
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 247
    .line 248
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/Boolean;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_11

    .line 259
    .line 260
    sget-object v0, Lcom/google/android/gms/internal/ads/Cw;->d:LG/c;

    .line 261
    .line 262
    iget-boolean v0, v0, LG/c;->H:Z

    .line 263
    .line 264
    if-nez v0, :cond_10

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/jq;

    .line 268
    .line 269
    move-object v11, v0

    .line 270
    move-object/from16 v12, p1

    .line 271
    .line 272
    move-object/from16 v17, v10

    .line 273
    .line 274
    invoke-direct/range {v11 .. v18}, Lcom/google/android/gms/internal/ads/jq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/WebView;Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jq;->a()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_7

    .line 282
    :catch_0
    move-exception v0

    .line 283
    move-object v9, v0

    .line 284
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 285
    .line 286
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 287
    .line 288
    const-string v10, "omid exception"

    .line 289
    .line 290
    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    move-object v0, v2

    .line 294
    :goto_7
    check-cast v0, Lcom/google/android/gms/internal/ads/mq;

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_11
    :goto_8
    move-object v0, v2

    .line 298
    :goto_9
    if-nez v0, :cond_12

    .line 299
    .line 300
    const-string v0, "Failed to create omid session in InternalNativeAd"

    .line 301
    .line 302
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-object v2

    .line 306
    :cond_12
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 307
    .line 308
    monitor-enter v2

    .line 309
    :try_start_1
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Il;->l:Lcom/google/android/gms/internal/ads/mq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .line 311
    monitor-exit v2

    .line 312
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/Ef;->e0(Lcom/google/android/gms/internal/ads/mq;)V

    .line 313
    .line 314
    .line 315
    if-eqz v7, :cond_13

    .line 316
    .line 317
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 318
    .line 319
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    iget-object v7, v8, Lk3/l;->v:Lc4/y;

    .line 324
    .line 325
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {v2, v4}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/El;->x:Z

    .line 332
    .line 333
    :cond_13
    if-eqz p2, :cond_14

    .line 334
    .line 335
    iget-object v2, v8, Lk3/l;->v:Lc4/y;

    .line 336
    .line 337
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-static {v4}, Lc4/y;->f(Lcom/google/android/gms/internal/ads/xx;)V

    .line 343
    .line 344
    .line 345
    new-instance v2, Lr/f;

    .line 346
    .line 347
    invoke-direct {v2, v5}, Lr/m;-><init>(I)V

    .line 348
    .line 349
    .line 350
    const-string v4, "onSdkLoaded"

    .line 351
    .line 352
    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 353
    .line 354
    .line 355
    :cond_14
    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    move-object v3, v0

    .line 358
    monitor-exit v2

    .line 359
    throw v3

    .line 360
    :cond_15
    :goto_a
    return-object v2
.end method

.method public final declared-synchronized y(Landroid/widget/FrameLayout;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/El;->q()Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 7
    .line 8
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/Ll;->k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized z(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/El;->q()Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 7
    .line 8
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/Ll;->o(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method
