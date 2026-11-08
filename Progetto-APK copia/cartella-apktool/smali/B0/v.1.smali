.class public final LB0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LB0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, LB0/s;->m()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 5
    .line 6
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 7
    .line 8
    invoke-static {v0}, LB0/s;->f(Lz4/d0;)Landroid/media/RouteDiscoveryPreference$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, LB0/s;->g(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/media/MediaRouter2;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/H1;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, LB0/s;->y(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, LB0/s;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, LA0/F;->m(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p0}, LB0/s;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->wasTransferInitiatedBySelf()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {p0}, LB0/s;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, LB0/s;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getSuitabilityStatus()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x1

    .line 59
    if-ne v2, v3, :cond_2

    .line 60
    .line 61
    if-eq v0, v3, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    if-ne v0, v2, :cond_0

    .line 65
    .line 66
    :cond_1
    if-eqz v1, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-nez v2, :cond_0

    .line 70
    .line 71
    :goto_0
    return v3

    .line 72
    :cond_3
    const/4 p0, 0x0

    .line 73
    return p0
.end method
