.class public final synthetic LB0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LB0/B;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/B;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, LB0/B;->H:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, LB0/B;->G:I

    .line 2
    .line 3
    iget v1, p0, LB0/B;->H:I

    .line 4
    .line 5
    iget-object v2, p0, LB0/B;->I:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lm0/I;

    .line 11
    .line 12
    check-cast p1, Lm0/W;

    .line 13
    .line 14
    invoke-interface {p1, v2, v1}, Lm0/W;->t(Lm0/I;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v2, LB0/v0;

    .line 19
    .line 20
    check-cast p1, Lm0/W;

    .line 21
    .line 22
    iget-object v0, v2, LB0/v0;->a:Lm0/f0;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Lm0/W;->u(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
