.class public final LX4/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:LX4/i;


# direct methods
.method public constructor <init>(LX4/i;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LX4/h;->c:LX4/i;

    .line 2
    .line 3
    iput-object p2, p0, LX4/h;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    iput p3, p0, LX4/h;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, LX4/h;->c:LX4/i;

    .line 2
    .line 3
    iget-object v0, p1, LX4/i;->L:Lm2/e;

    .line 4
    .line 5
    iget-object v1, p1, LX4/i;->K:Landroid/view/View;

    .line 6
    .line 7
    iget-object v2, v0, Lm2/e;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lk/d;

    .line 10
    .line 11
    invoke-virtual {v2}, Lk/d;->h()Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lm2/e;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lk/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Lk/d;->h()Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p1, LX4/i;->K:Landroid/view/View;

    .line 29
    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, LX4/i;->K:Landroid/view/View;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LX4/h;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    iget v1, p0, LX4/h;->b:I

    .line 44
    .line 45
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    .line 47
    iget-object p1, p1, LX4/i;->K:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
