.class public final synthetic LB0/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LB0/I;->G:I

    .line 5
    .line 6
    iput-boolean p1, p0, LB0/I;->H:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LB0/I;->G:I

    .line 2
    .line 3
    iget-boolean v1, p0, LB0/I;->H:Z

    .line 4
    .line 5
    check-cast p1, Lm0/W;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Lm0/W;->f(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-interface {p1, v1}, Lm0/W;->o(Z)V

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
