.class public abstract LE1/n0;
.super LE1/m0;
.source "SourceFile"

# interfaces
.implements LE1/O;


# virtual methods
.method public o(LE1/k0;LE1/g;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, LE1/m0;->o(LE1/k0;LE1/g;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LE1/k0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object p2, p2, LE1/g;->a:Landroid/os/Bundle;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "enabled"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p1}, LE1/n0;->x(LE1/k0;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const-string p1, "connectionState"

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string v0, "MediaRouterJellybeanMr1"

    .line 39
    .line 40
    const-string v1, "Cannot get presentation display for the route."

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_0
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const-string v0, "presentationDisplayId"

    .line 53
    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public abstract x(LE1/k0;)Z
.end method
