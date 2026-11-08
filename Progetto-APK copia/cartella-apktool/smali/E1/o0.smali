.class public LE1/o0;
.super LE1/n0;
.source "SourceFile"


# virtual methods
.method public bridge synthetic m()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LE1/o0;->y()Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public o(LE1/k0;LE1/g;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LE1/n0;->o(LE1/k0;LE1/g;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, LE1/k0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p2, LE1/g;->a:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string v0, "status"

    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public t(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, LE1/m0;->j:Landroid/media/MediaRouter;

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LE1/m0;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, LE1/m0;->k:Landroid/media/MediaRouter$Callback;

    .line 4
    .line 5
    iget-object v2, p0, LE1/m0;->j:Landroid/media/MediaRouter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, LE1/m0;->p:Z

    .line 14
    .line 15
    iget-boolean v0, p0, LE1/m0;->o:Z

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iget v3, p0, LE1/m0;->n:I

    .line 20
    .line 21
    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public w(LE1/l0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LE1/m0;->w(LE1/l0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LE1/l0;->a:LE1/F;

    .line 5
    .line 6
    iget-object v0, v0, LE1/F;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p1, LE1/l0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public x(LE1/k0;)Z
    .locals 0

    .line 1
    iget-object p1, p1, LE1/k0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public y()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .line 1
    iget-object v0, p0, LE1/m0;->j:Landroid/media/MediaRouter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
