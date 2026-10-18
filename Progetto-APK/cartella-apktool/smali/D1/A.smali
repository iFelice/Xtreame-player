.class public final LD1/A;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LD1/v;

.field public final synthetic c:LD1/B;


# direct methods
.method public synthetic constructor <init>(LD1/B;LD1/v;I)V
    .locals 0

    .line 1
    iput p3, p0, LD1/A;->a:I

    .line 2
    .line 3
    iput-object p1, p0, LD1/A;->c:LD1/B;

    .line 4
    .line 5
    iput-object p2, p0, LD1/A;->b:LD1/v;

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
    .locals 4

    .line 1
    iget p1, p0, LD1/A;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, LD1/A;->b:LD1/v;

    .line 6
    .line 7
    iget-object v3, p0, LD1/A;->c:LD1/B;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v0}, LD1/B;->j(I)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, v3, LD1/B;->B:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v3, LD1/B;->s:LD1/w;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iput-boolean v1, v3, LD1/B;->B:Z

    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {v3, v0}, LD1/B;->j(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, v3, LD1/B;->B:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, v3, LD1/B;->s:LD1/w;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    iput-boolean v1, v3, LD1/B;->B:Z

    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :pswitch_1
    const/4 p1, 0x1

    .line 43
    invoke-virtual {v3, p1}, LD1/B;->j(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, v3, LD1/B;->B:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, v3, LD1/B;->s:LD1/w;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    iput-boolean v1, v3, LD1/B;->B:Z

    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, LD1/A;->a:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, LD1/A;->c:LD1/B;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, LD1/B;->j(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-virtual {v1, v0}, LD1/B;->j(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    invoke-virtual {v1, v0}, LD1/B;->j(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
