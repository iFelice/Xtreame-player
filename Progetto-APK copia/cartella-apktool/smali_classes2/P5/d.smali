.class public final synthetic LP5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LP5/f;

.field public final synthetic I:LZ3/o;


# direct methods
.method public synthetic constructor <init>(LP5/f;LZ3/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LP5/d;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LP5/d;->H:LP5/f;

    .line 7
    .line 8
    iput-object p2, p0, LP5/d;->I:LZ3/o;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LP5/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LP5/d;->I:LZ3/o;

    .line 4
    .line 5
    iget-object v2, p0, LP5/d;->H:LP5/f;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, LP5/f;->c:LP5/h;

    .line 11
    .line 12
    iget-object v2, v0, LP5/h;->a:Landroid/hardware/Camera;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-boolean v3, v0, LP5/h;->e:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, LP5/h;->l:LP5/g;

    .line 21
    .line 22
    iput-object v1, v0, LP5/g;->a:LZ3/o;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget-boolean v0, v2, LP5/f;->f:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "f"

    .line 33
    .line 34
    const-string v1, "Camera is closed, not requesting preview"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, LP5/d;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v0, v2, v1, v3}, LP5/d;-><init>(LP5/f;LZ3/o;I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v2, LP5/f;->a:LP5/j;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
