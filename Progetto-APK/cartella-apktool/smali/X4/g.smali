.class public final LX4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:LX4/i;


# direct methods
.method public constructor <init>(LX4/i;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LX4/g;->e:LX4/i;

    .line 5
    .line 6
    iput p2, p0, LX4/g;->a:F

    .line 7
    .line 8
    iput p3, p0, LX4/g;->b:F

    .line 9
    .line 10
    iput p4, p0, LX4/g;->c:F

    .line 11
    .line 12
    iput p5, p0, LX4/g;->d:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, LX4/g;->b:F

    .line 6
    .line 7
    mul-float v0, v0, v1

    .line 8
    .line 9
    iget v1, p0, LX4/g;->a:F

    .line 10
    .line 11
    add-float/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget v1, p0, LX4/g;->d:F

    .line 17
    .line 18
    mul-float p1, p1, v1

    .line 19
    .line 20
    iget v1, p0, LX4/g;->c:F

    .line 21
    .line 22
    add-float/2addr p1, v1

    .line 23
    iget-object v1, p0, LX4/g;->e:LX4/i;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, LX4/i;->c(F)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, LX4/i;->K:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
