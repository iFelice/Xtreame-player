.class public final Ls4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ls4/e;


# direct methods
.method public constructor <init>(Ls4/e;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls4/c;->e:Ls4/e;

    .line 5
    .line 6
    iput p2, p0, Ls4/c;->a:I

    .line 7
    .line 8
    iput p3, p0, Ls4/c;->b:I

    .line 9
    .line 10
    iput p4, p0, Ls4/c;->c:I

    .line 11
    .line 12
    iput p5, p0, Ls4/c;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Li4/a;->a:La0/b;

    .line 6
    .line 7
    iget v0, p0, Ls4/c;->b:I

    .line 8
    .line 9
    iget v1, p0, Ls4/c;->a:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    int-to-float v0, v0

    .line 13
    mul-float v0, v0, p1

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/2addr v0, v1

    .line 20
    iget v1, p0, Ls4/c;->d:I

    .line 21
    .line 22
    iget v2, p0, Ls4/c;->c:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    int-to-float v1, v1

    .line 26
    mul-float p1, p1, v1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr p1, v2

    .line 33
    iget-object v1, p0, Ls4/c;->e:Ls4/e;

    .line 34
    .line 35
    iget v2, v1, Ls4/e;->M:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_0

    .line 38
    .line 39
    iget v2, v1, Ls4/e;->N:I

    .line 40
    .line 41
    if-eq p1, v2, :cond_1

    .line 42
    .line 43
    :cond_0
    iput v0, v1, Ls4/e;->M:I

    .line 44
    .line 45
    iput p1, v1, Ls4/e;->N:I

    .line 46
    .line 47
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
