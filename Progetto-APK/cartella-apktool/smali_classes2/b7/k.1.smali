.class public final Lb7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# instance fields
.field public final synthetic G:Lpe/hf/black20/CatchupPlayerActivity;


# direct methods
.method public constructor <init>(Lpe/hf/black20/CatchupPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/k;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEvent(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    .line 2
    .line 3
    iget p1, p1, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;->type:I

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    iget-object v1, p0, Lb7/k;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    goto :goto_0

    .line 13
    :pswitch_1
    iget-object p1, v1, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_2
    iget-object p1, v1, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    iget-object p1, v1, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_4
    iget-object p1, v1, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
