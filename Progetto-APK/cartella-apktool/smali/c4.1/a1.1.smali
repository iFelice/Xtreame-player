.class public final Lc4/a1;
.super Lc4/p;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lc4/d1;


# direct methods
.method public synthetic constructor <init>(Lc4/d1;Lc4/t0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc4/a1;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lc4/a1;->f:Lc4/d1;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lc4/p;-><init>(Lc4/t0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lc4/a1;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/a1;->f:Lc4/d1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc4/l0;

    .line 11
    .line 12
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 13
    .line 14
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "Tasks have been queued for a long time"

    .line 18
    .line 19
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lc4/d1;->x()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lc4/l0;

    .line 38
    .line 39
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 40
    .line 41
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "Inactivity, disconnecting from the service"

    .line 45
    .line 46
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lc4/d1;->r()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
