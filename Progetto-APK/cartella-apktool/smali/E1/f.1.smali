.class public final LE1/f;
.super LE1/n;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final i:Landroid/media/MediaRouter2;

.field public final j:LE1/u;

.field public final k:Landroid/util/ArrayMap;

.field public final l:LE1/d;

.field public final m:LE1/e;

.field public final n:LB0/u;

.field public final o:LD0/O;

.field public p:Ljava/util/ArrayList;

.field public final q:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2Provider"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LE1/u;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, LE1/n;-><init>(Landroid/content/Context;LE1/f0;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 11
    .line 12
    new-instance v0, LE1/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, LE1/e;-><init>(LE1/f;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LE1/f;->m:LE1/e;

    .line 18
    .line 19
    new-instance v0, LB0/u;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, LB0/u;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LE1/f;->n:LB0/u;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, LE1/f;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, LE1/f;->q:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-static {p1}, LE1/a;->c(Landroid/content/Context;)Landroid/media/MediaRouter2;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, LE1/f;->i:Landroid/media/MediaRouter2;

    .line 46
    .line 47
    iput-object p2, p0, LE1/f;->j:LE1/u;

    .line 48
    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, LD0/O;

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-direct {p2, v0, p1}, LD0/O;-><init>(ILandroid/os/Handler;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, LE1/f;->o:LD0/O;

    .line 65
    .line 66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 p2, 0x22

    .line 69
    .line 70
    if-lt p1, p2, :cond_0

    .line 71
    .line 72
    new-instance p1, LE1/d;

    .line 73
    .line 74
    invoke-direct {p1, p0}, LE1/d;-><init>(LE1/f;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, LE1/f;->l:LE1/d;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, LE1/d;

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    invoke-direct {p1, p0, p2}, LE1/d;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, LE1/f;->l:LE1/d;

    .line 87
    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)LE1/l;
    .locals 3

    .line 1
    iget-object v0, p0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LE1/b;

    .line 28
    .line 29
    iget-object v2, v1, LE1/b;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public final d(Ljava/lang/String;)LE1/m;
    .locals 2

    .line 1
    iget-object v0, p0, LE1/f;->q:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, LE1/c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, v1}, LE1/c;-><init>(Ljava/lang/String;LE1/b;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)LE1/m;
    .locals 4

    .line 1
    iget-object v0, p0, LE1/f;->q:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, LE1/b;

    .line 30
    .line 31
    iget-object v3, v2, LE1/b;->o:LE1/h;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, LE1/h;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, v2, LE1/b;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 41
    .line 42
    invoke-static {v3}, LB0/s;->k(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_0
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    new-instance p1, LE1/c;

    .line 53
    .line 54
    invoke-direct {p1, v0, v2}, LE1/c;-><init>(Ljava/lang/String;LE1/b;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Could not find the matching GroupRouteController. routeId="

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ", routeGroupId="

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "MR2Provider"

    .line 81
    .line 82
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance p1, LE1/c;

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-direct {p1, v0, p2}, LE1/c;-><init>(Ljava/lang/String;LE1/b;)V

    .line 89
    .line 90
    .line 91
    return-object p1
.end method

.method public final f(LE1/i;)V
    .locals 7

    .line 1
    sget-object v0, LE1/H;->c:LE1/A;

    .line 2
    .line 3
    iget-object v1, p0, LE1/f;->n:LB0/u;

    .line 4
    .line 5
    iget-object v2, p0, LE1/f;->m:LE1/e;

    .line 6
    .line 7
    iget-object v3, p0, LE1/f;->l:LE1/d;

    .line 8
    .line 9
    iget-object v4, p0, LE1/f;->i:Landroid/media/MediaRouter2;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, LE1/A;->A:I

    .line 19
    .line 20
    if-lez v0, :cond_6

    .line 21
    .line 22
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, LE1/A;->q:LE1/Q;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, v0, LE1/Q;->c:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 41
    :goto_1
    if-nez p1, :cond_3

    .line 42
    .line 43
    new-instance p1, LE1/i;

    .line 44
    .line 45
    sget-object v6, LE1/p;->c:LE1/p;

    .line 46
    .line 47
    invoke-direct {p1, v6, v5}, LE1/i;-><init>(LE1/p;Z)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1}, LE1/i;->a()V

    .line 51
    .line 52
    .line 53
    iget-object v5, p1, LE1/i;->b:LE1/p;

    .line 54
    .line 55
    invoke-virtual {v5}, LE1/p;->b()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "android.media.intent.category.LIVE_AUDIO"

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_2
    new-instance v0, LE1/f0;

    .line 77
    .line 78
    invoke-direct {v0}, LE1/f0;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, LE1/f0;->c(Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, LE1/f0;->d()LE1/p;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v5, LE1/i;

    .line 89
    .line 90
    invoke-virtual {p1}, LE1/i;->b()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-direct {v5, v0, p1}, LE1/i;-><init>(LE1/p;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, LH/a;->g(LE1/i;)Landroid/media/RouteDiscoveryPreference;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, LE1/f;->o:LD0/O;

    .line 102
    .line 103
    invoke-static {v4, v0, v3, p1}, LB0/s;->p(Landroid/media/MediaRouter2;LD0/O;LE1/d;Landroid/media/RouteDiscoveryPreference;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v0, v2}, LB0/s;->q(Landroid/media/MediaRouter2;LD0/O;LE1/e;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v0, v1}, LB0/s;->o(Landroid/media/MediaRouter2;LD0/O;LB0/u;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    :goto_3
    invoke-static {v4, v3}, LB0/s;->r(Landroid/media/MediaRouter2;LE1/d;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v2}, LB0/s;->s(Landroid/media/MediaRouter2;LE1/e;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v1}, LB0/s;->n(Landroid/media/MediaRouter2;LB0/u;)V

    .line 120
    .line 121
    .line 122
    :goto_4
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, LB0/q;->r()Landroid/util/ArraySet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, LE1/f;->i:Landroid/media/MediaRouter2;

    .line 11
    .line 12
    invoke-static {v2}, LE1/a;->n(Landroid/media/MediaRouter2;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-static {v3}, LB0/s;->w(Landroid/media/MediaRoute2Info;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, LE1/f;->p:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iput-object v0, p0, LE1/f;->p:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v0, p0, LE1/f;->q:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, LE1/f;->p:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, LB0/s;->h(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    const-string v4, "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {v2}, LB0/s;->j(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "Cannot find the original route Id. route="

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "MR2Provider"

    .line 134
    .line 135
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, LE1/f;->p:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, LH/a;->h(Landroid/media/MediaRoute2Info;)LE1/h;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_b

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, LE1/h;

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v1, "route descriptor already added"

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    const-string v1, "route must not be null"

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_b
    new-instance v0, LE1/o;

    .line 230
    .line 231
    const/4 v2, 0x1

    .line 232
    invoke-direct {v0, v1, v2}, LE1/o;-><init>(Ljava/util/List;Z)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, LE1/n;->g(LE1/o;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final j(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 10

    .line 1
    iget-object v0, p0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LE1/b;

    .line 8
    .line 9
    const-string v1, "MR2Provider"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "setDynamicRouteDescriptors: No matching routeController found. routingController="

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p1}, LB0/s;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController="

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-static {v2}, LH/a;->c(Ljava/util/List;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, LH/a;->h(Landroid/media/MediaRoute2Info;)LE1/h;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1}, LB0/s;->i(Landroid/media/MediaRouter2$RoutingController;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const v5, 0x7f130145

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, LE1/n;->a:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v6, 0x0

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    :try_start_0
    const-string v7, "androidx.mediarouter.media.KEY_SESSION_NAME"

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_2

    .line 103
    .line 104
    move-object v5, v7

    .line 105
    :cond_2
    const-string v7, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    .line 106
    .line 107
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    new-instance v7, LE1/h;

    .line 114
    .line 115
    invoke-direct {v7, v4}, LE1/h;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    move-object v6, v7

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v4

    .line 121
    const-string v7, "Exception while unparceling control hints."

    .line 122
    .line 123
    invoke-static {v1, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 127
    if-nez v6, :cond_4

    .line 128
    .line 129
    new-instance v6, LE1/g;

    .line 130
    .line 131
    invoke-static {p1}, LB0/s;->k(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-direct {v6, v7, v5}, LE1/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v5, "connectionState"

    .line 139
    .line 140
    iget-object v7, v6, LE1/g;->a:Landroid/os/Bundle;

    .line 141
    .line 142
    const/4 v8, 0x2

    .line 143
    invoke-virtual {v7, v5, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string v5, "playbackType"

    .line 147
    .line 148
    invoke-virtual {v7, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    new-instance v5, LE1/g;

    .line 153
    .line 154
    invoke-direct {v5, v6}, LE1/g;-><init>(LE1/h;)V

    .line 155
    .line 156
    .line 157
    move-object v6, v5

    .line 158
    :goto_1
    invoke-static {p1}, LB0/s;->a(Landroid/media/MediaRouter2$RoutingController;)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const-string v7, "volume"

    .line 163
    .line 164
    iget-object v8, v6, LE1/g;->a:Landroid/os/Bundle;

    .line 165
    .line 166
    invoke-virtual {v8, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, LB0/s;->x(Landroid/media/MediaRouter2$RoutingController;)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const-string v7, "volumeMax"

    .line 174
    .line 175
    invoke-virtual {v8, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, LB0/s;->C(Landroid/media/MediaRouter2$RoutingController;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const-string v7, "volumeHandling"

    .line 183
    .line 184
    invoke-virtual {v8, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    iget-object v5, v6, LE1/g;->c:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, LE1/h;->b()Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v6, v2}, LE1/g;->a(Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v6, LE1/g;->b:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-nez v5, :cond_7

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_7

    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_6

    .line 231
    .line 232
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-nez v8, :cond_5

    .line 237
    .line 238
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    const-string v0, "groupMemberId must not be empty"

    .line 245
    .line 246
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_7
    invoke-virtual {v6}, LE1/g;->b()LE1/h;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p1}, LB0/s;->B(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v5}, LH/a;->c(Ljava/util/List;)Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {p1}, LB0/s;->D(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p1}, LH/a;->c(Ljava/util/List;)Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object v6, p0, LE1/n;->g:LE1/o;

    .line 271
    .line 272
    if-nez v6, :cond_8

    .line 273
    .line 274
    const-string p1, "setDynamicRouteDescriptors: providerDescriptor is not set."

    .line 275
    .line 276
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    iget-object v6, v6, LE1/o;->a:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-nez v7, :cond_a

    .line 292
    .line 293
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_a

    .line 302
    .line 303
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, LE1/h;

    .line 308
    .line 309
    invoke-virtual {v7}, LE1/h;->d()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-eqz v9, :cond_9

    .line 318
    .line 319
    const/4 v9, 0x3

    .line 320
    goto :goto_4

    .line 321
    :cond_9
    const/4 v9, 0x1

    .line 322
    :goto_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    new-instance v8, LE1/k;

    .line 329
    .line 330
    invoke-direct {v8, v7, v9}, LE1/k;-><init>(LE1/h;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_a
    iput-object v2, v0, LE1/b;->o:LE1/h;

    .line 338
    .line 339
    invoke-virtual {v0, v2, v1}, LE1/l;->j(LE1/h;Ljava/util/ArrayList;)V

    .line 340
    .line 341
    .line 342
    return-void
.end method
