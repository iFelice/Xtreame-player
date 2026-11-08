.class public final Lc4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:J

.field public final synthetic I:Lc4/z;


# direct methods
.method public synthetic constructor <init>(Lc4/z;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lc4/v;->G:I

    .line 5
    .line 6
    iput-wide p2, p0, Lc4/v;->H:J

    .line 7
    .line 8
    iput-object p1, p0, Lc4/v;->I:Lc4/z;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lc4/v;->G:I

    .line 2
    .line 3
    iget-wide v1, p0, Lc4/v;->H:J

    .line 4
    .line 5
    iget-object v3, p0, Lc4/v;->I:Lc4/z;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Lc4/V0;

    .line 11
    .line 12
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lc4/l0;

    .line 15
    .line 16
    iget-object v0, v0, Lc4/l0;->W:Lc4/x;

    .line 17
    .line 18
    invoke-static {v0}, Lc4/l0;->h(Lc4/z;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lc4/x;->p(J)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, v3, Lc4/V0;->K:Lc4/S0;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast v3, Lc4/x;

    .line 29
    .line 30
    invoke-virtual {v3, v1, v2}, Lc4/x;->s(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
