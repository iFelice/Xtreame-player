.class public abstract LE1/K;
.super Landroid/media/MediaRouter$Callback;
.source "SourceFile"


# instance fields
.field public final a:LE1/J;


# direct methods
.method public constructor <init>(LE1/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/K;->a:LE1/J;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    check-cast p1, LE1/m0;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, LE1/m0;->i(Landroid/media/MediaRouter$RouteInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, LE1/m0;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    check-cast p1, LE1/m0;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, LE1/m0;->n(Landroid/media/MediaRouter$RouteInfo;)LE1/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, LE1/m0;->j(Landroid/media/MediaRouter$RouteInfo;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ltz p2, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, LE1/m0;->q:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, LE1/k0;

    .line 27
    .line 28
    new-instance v0, LE1/g;

    .line 29
    .line 30
    iget-object v1, p2, LE1/k0;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p1, LE1/n;->a:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v3, p2, LE1/k0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v2, ""

    .line 48
    .line 49
    :goto_0
    invoke-direct {v0, v1, v2}, LE1/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, v0}, LE1/m0;->o(LE1/k0;LE1/g;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, LE1/g;->b()LE1/h;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p2, LE1/k0;->c:LE1/h;

    .line 60
    .line 61
    invoke-virtual {p1}, LE1/m0;->s()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    check-cast p1, LE1/m0;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, LE1/m0;->n(Landroid/media/MediaRouter$RouteInfo;)LE1/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2}, LE1/m0;->j(Landroid/media/MediaRouter$RouteInfo;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ltz p2, :cond_0

    .line 19
    .line 20
    iget-object v0, p1, LE1/m0;->q:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, LE1/m0;->s()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    check-cast p1, LE1/m0;

    .line 4
    .line 5
    iget-object p2, p1, LE1/m0;->j:Landroid/media/MediaRouter;

    .line 6
    .line 7
    const v0, 0x800003

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eq p3, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p3}, LE1/m0;->n(Landroid/media/MediaRouter$RouteInfo;)LE1/l0;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x3

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-object p1, p2, LE1/l0;->a:LE1/F;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, LE1/H;->b()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1, v0}, LE1/A;->k(LE1/F;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1, p3}, LE1/m0;->j(Landroid/media/MediaRouter$RouteInfo;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-ltz p2, :cond_2

    .line 45
    .line 46
    iget-object p3, p1, LE1/m0;->q:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, LE1/k0;

    .line 53
    .line 54
    iget-object p2, p2, LE1/k0;->b:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p1, LE1/m0;->i:LE1/p0;

    .line 57
    .line 58
    check-cast p1, LE1/A;

    .line 59
    .line 60
    iget-object p3, p1, LE1/A;->n:LE1/v;

    .line 61
    .line 62
    const/16 v1, 0x106

    .line 63
    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p1, LE1/A;->c:LE1/o0;

    .line 68
    .line 69
    invoke-virtual {p1, p3}, LE1/A;->e(LE1/n;)LE1/E;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, p2}, LE1/E;->a(Ljava/lang/String;)LE1/F;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-static {}, LE1/H;->b()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1, v0}, LE1/A;->k(LE1/F;I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 6

    .line 1
    iget-object p1, p0, LE1/K;->a:LE1/J;

    .line 2
    .line 3
    check-cast p1, LE1/m0;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, LE1/m0;->n(Landroid/media/MediaRouter$RouteInfo;)LE1/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, LE1/m0;->j(Landroid/media/MediaRouter$RouteInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, LE1/m0;->q:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, LE1/k0;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object v1, v0, LE1/k0;->c:LE1/h;

    .line 33
    .line 34
    iget-object v1, v1, LE1/h;->a:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v2, "volume"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq p2, v1, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, LE1/k0;->c:LE1/h;

    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v3, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    new-instance v3, Landroid/os/Bundle;

    .line 64
    .line 65
    iget-object v4, v1, LE1/h;->a:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, LE1/h;->c()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1}, LE1/h;->b()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v1}, LE1/h;->a()Ljava/util/HashSet;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v3, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    const-string v2, "controlFilters"

    .line 91
    .line 92
    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "groupMemberIds"

    .line 101
    .line 102
    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "allowedPackages"

    .line 111
    .line 112
    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    new-instance p2, LE1/h;

    .line 116
    .line 117
    invoke-direct {p2, v3}, LE1/h;-><init>(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    iput-object p2, v0, LE1/k0;->c:LE1/h;

    .line 121
    .line 122
    invoke-virtual {p1}, LE1/m0;->s()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p2, "descriptor must not be null"

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_1
    :goto_0
    return-void
.end method
