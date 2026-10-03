.class public final synthetic LB0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Lp0/j;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LB0/G;->G:I

    .line 5
    .line 6
    iput p1, p0, LB0/G;->H:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LG0/o;

    .line 2
    .line 3
    iget v0, p0, LB0/G;->H:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, LG0/o;->d(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LB0/G;->G:I

    .line 2
    .line 3
    iget v1, p0, LB0/G;->H:I

    .line 4
    .line 5
    check-cast p1, Lm0/W;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Lm0/W;->c(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-interface {p1, v1}, Lm0/W;->onRepeatModeChanged(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
