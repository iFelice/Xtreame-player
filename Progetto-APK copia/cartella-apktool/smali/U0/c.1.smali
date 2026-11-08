.class public final synthetic LU0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lm2/l;


# direct methods
.method public synthetic constructor <init>(Lm2/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LU0/c;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LU0/c;->H:Lm2/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, LU0/c;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LU0/c;->H:Lm2/l;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lm2/l;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LU0/d;

    .line 11
    .line 12
    iget-object v0, v0, LU0/d;->M:LU0/O;

    .line 13
    .line 14
    invoke-interface {v0}, LU0/O;->z()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, v1, Lm2/l;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, LU0/d;

    .line 21
    .line 22
    iget-object v0, v0, LU0/d;->M:LU0/O;

    .line 23
    .line 24
    invoke-interface {v0}, LU0/O;->k()V

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
