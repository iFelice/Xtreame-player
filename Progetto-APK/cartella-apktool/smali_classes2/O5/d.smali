.class public final LO5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO5/d;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LO5/d;->H:Landroid/view/KeyEvent$Callback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget p2, p0, LO5/d;->G:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget p1, LO5/g;->i0:I

    .line 10
    .line 11
    const-string p1, "g"

    .line 12
    .line 13
    const-string p2, "*** WARNING *** surfaceChanged() gave us a null surface!"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, LO5/d;->H:Landroid/view/KeyEvent$Callback;

    .line 20
    .line 21
    check-cast p1, LO5/g;

    .line 22
    .line 23
    new-instance p2, LO5/t;

    .line 24
    .line 25
    invoke-direct {p2, p3, p4}, LO5/t;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p1, LO5/g;->V:LO5/t;

    .line 29
    .line 30
    invoke-virtual {p1}, LO5/g;->f()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget p1, p0, LO5/d;->G:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, LO5/d;->H:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    check-cast p1, LO5/g;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, LO5/g;->V:LO5/t;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
