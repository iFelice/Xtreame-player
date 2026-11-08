.class public final synthetic LO0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/j;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LO0/D;

.field public final synthetic I:LO0/p;

.field public final synthetic J:LO0/u;


# direct methods
.method public synthetic constructor <init>(LO0/D;LO0/p;LO0/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, LO0/B;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LO0/B;->H:LO0/D;

    .line 7
    .line 8
    iput-object p2, p0, LO0/B;->I:LO0/p;

    .line 9
    .line 10
    iput-object p3, p0, LO0/B;->J:LO0/u;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, LO0/B;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LO0/B;->J:LO0/u;

    .line 4
    .line 5
    iget-object v2, p0, LO0/B;->I:LO0/p;

    .line 6
    .line 7
    iget-object v3, p0, LO0/B;->H:LO0/D;

    .line 8
    .line 9
    check-cast p1, LO0/E;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, v3, LO0/D;->a:I

    .line 15
    .line 16
    iget-object v3, v3, LO0/D;->b:LO0/y;

    .line 17
    .line 18
    invoke-interface {p1, v0, v3, v2, v1}, LO0/E;->F(ILO0/y;LO0/p;LO0/u;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget v0, v3, LO0/D;->a:I

    .line 23
    .line 24
    iget-object v3, v3, LO0/D;->b:LO0/y;

    .line 25
    .line 26
    invoke-interface {p1, v0, v3, v2, v1}, LO0/E;->l(ILO0/y;LO0/p;LO0/u;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
