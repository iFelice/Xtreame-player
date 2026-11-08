.class public final Lb7/f1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/PlayStreamEPGActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb7/f1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb7/f1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lb7/f1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/f1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->r0:Landroid/widget/ListView;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->v0:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->r0:Landroid/widget/ListView;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->v0:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
