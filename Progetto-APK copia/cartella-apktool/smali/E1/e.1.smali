.class public final LE1/e;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LE1/f;


# direct methods
.method public constructor <init>(LE1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE1/e;->a:LE1/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 2

    .line 1
    iget-object v0, p0, LE1/e;->a:LE1/f;

    .line 2
    .line 3
    iget-object v0, v0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LE1/m;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, LE1/e;->a:LE1/f;

    .line 14
    .line 15
    iget-object p1, p1, LE1/f;->j:LE1/u;

    .line 16
    .line 17
    iget-object p1, p1, LE1/u;->a:LE1/A;

    .line 18
    .line 19
    iget-object v1, p1, LE1/A;->u:LE1/m;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, LE1/A;->c()LE1/F;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, LE1/A;->f()LE1/F;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eq v1, v0, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p1, v0, v1}, LE1/A;->l(LE1/F;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, LE1/H;->c:LE1/A;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "onStop: No matching routeController found. routingController="

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    const-string v0, "MR2Provider"

    .line 56
    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 6

    .line 1
    iget-object v0, p0, LE1/e;->a:LE1/f;

    .line 2
    .line 3
    iget-object v0, v0, LE1/f;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LE1/e;->a:LE1/f;

    .line 9
    .line 10
    iget-object p1, p1, LE1/f;->i:Landroid/media/MediaRouter2;

    .line 11
    .line 12
    invoke-static {p1}, LB0/s;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, LE1/e;->a:LE1/f;

    .line 20
    .line 21
    iget-object p1, p1, LE1/f;->j:LE1/u;

    .line 22
    .line 23
    iget-object p1, p1, LE1/u;->a:LE1/A;

    .line 24
    .line 25
    invoke-virtual {p1}, LE1/A;->c()LE1/F;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1}, LE1/A;->f()LE1/F;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eq v1, p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, LE1/A;->l(LE1/F;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    invoke-static {p2}, LB0/s;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string p1, "MR2Provider"

    .line 51
    .line 52
    const-string p2, "Selected routes are empty. This shouldn\'t happen."

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LB0/s;->z(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v1, LE1/b;

    .line 72
    .line 73
    invoke-direct {v1, p2, p1}, LE1/b;-><init>(Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, LE1/e;->a:LE1/f;

    .line 77
    .line 78
    iget-object v2, v2, LE1/f;->k:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, LE1/e;->a:LE1/f;

    .line 84
    .line 85
    iget-object v1, v1, LE1/f;->j:LE1/u;

    .line 86
    .line 87
    iget-object v1, v1, LE1/u;->a:LE1/A;

    .line 88
    .line 89
    iget-object v2, v1, LE1/A;->h:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, LE1/F;

    .line 106
    .line 107
    invoke-virtual {v3}, LE1/F;->a()LE1/n;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v5, v1, LE1/A;->f:LE1/f;

    .line 112
    .line 113
    if-eq v4, v5, :cond_3

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    iget-object v4, v3, LE1/F;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const/4 v3, 0x0

    .line 126
    :goto_1
    if-nez v3, :cond_5

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "onSelectRoute: The target RouteInfo is not found for descriptorId="

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "MediaRouter"

    .line 143
    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {v1, v3, v0}, LE1/A;->l(LE1/F;I)V

    .line 149
    .line 150
    .line 151
    :goto_2
    iget-object p1, p0, LE1/e;->a:LE1/f;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, LE1/f;->j(Landroid/media/MediaRouter2$RoutingController;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_3
    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Transfer failed. requestedRoute="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "MR2Provider"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method
