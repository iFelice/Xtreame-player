.class public final Ls4/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls4/e;


# direct methods
.method public constructor <init>(Ls4/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls4/d;->b:Ls4/e;

    .line 2
    .line 3
    iput p2, p0, Ls4/d;->a:I

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
    .locals 1

    .line 1
    iget p1, p0, Ls4/d;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ls4/d;->b:Ls4/e;

    .line 4
    .line 5
    iput p1, v0, Ls4/e;->J:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, v0, Ls4/e;->K:F

    .line 9
    .line 10
    return-void
.end method
