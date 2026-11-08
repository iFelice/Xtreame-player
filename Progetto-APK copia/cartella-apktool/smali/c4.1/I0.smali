.class public final Lc4/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/x0;

.field public final synthetic I:J

.field public final synthetic J:Z

.field public final synthetic K:Lc4/K0;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;Lc4/x0;JZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lc4/I0;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/I0;->H:Lc4/x0;

    .line 7
    .line 8
    iput-wide p3, p0, Lc4/I0;->I:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lc4/I0;->J:Z

    .line 11
    .line 12
    iput-object p1, p0, Lc4/I0;->K:Lc4/K0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lc4/I0;->G:I

    .line 2
    .line 3
    iget-object v2, p0, Lc4/I0;->H:Lc4/x0;

    .line 4
    .line 5
    iget-object v1, p0, Lc4/I0;->K:Lc4/K0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc4/K0;->F(Lc4/x0;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v6, p0, Lc4/I0;->J:Z

    .line 14
    .line 15
    iget-wide v3, p0, Lc4/I0;->I:J

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lc4/K0;->q(Lc4/K0;Lc4/x0;JZZ)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-virtual {v1, v2}, Lc4/K0;->F(Lc4/x0;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v6, p0, Lc4/I0;->J:Z

    .line 26
    .line 27
    iget-wide v3, p0, Lc4/I0;->I:J

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-static/range {v1 .. v6}, Lc4/K0;->q(Lc4/K0;Lc4/x0;JZZ)V

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
