.class public final LE1/d;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE1/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LE1/d;->a:I

    .line 2
    invoke-direct {p0, p1, v0}, LE1/d;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, LE1/d;->a:I

    iput-object p1, p0, LE1/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRoutesAdded(Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, LE1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesAdded(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, LE1/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LE1/f;

    .line 13
    .line 14
    invoke-virtual {p1}, LE1/f;->i()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRoutesChanged(Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, LE1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesChanged(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, LE1/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LE1/f;

    .line 13
    .line 14
    invoke-virtual {p1}, LE1/f;->i()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRoutesRemoved(Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, LE1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesRemoved(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, LE1/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LE1/f;

    .line 13
    .line 14
    invoke-virtual {p1}, LE1/f;->i()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRoutesUpdated(Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, LE1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesUpdated(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, LE1/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LE1/f;

    .line 13
    .line 14
    invoke-virtual {p1}, LE1/f;->i()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
