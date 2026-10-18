.class public final Lb7/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/RadioPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/RadioPlayerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/l1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/l1;->H:Lpe/hf/black20/RadioPlayerActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lb7/l1;->G:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lb7/l1;->H:Lpe/hf/black20/RadioPlayerActivity;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 15
    .line 16
    .line 17
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 33
    .line 34
    const v0, 0x3e99999a    # 0.3f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 47
    .line 48
    const v0, 0x3cf5c28f    # 0.03f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v3, Lpe/hf/black20/RadioPlayerActivity;->J:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, p1}, Lpe/hf/black20/RadioPlayerActivity;->a(Lpe/hf/black20/RadioPlayerActivity;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
