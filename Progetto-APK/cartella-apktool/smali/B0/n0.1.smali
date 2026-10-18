.class public final synthetic LB0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LB0/q0;

.field public final synthetic I:Landroid/util/Pair;

.field public final synthetic J:LO0/p;

.field public final synthetic K:LO0/u;


# direct methods
.method public synthetic constructor <init>(LB0/q0;Landroid/util/Pair;LO0/p;LO0/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LB0/n0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/n0;->H:LB0/q0;

    .line 7
    .line 8
    iput-object p2, p0, LB0/n0;->I:Landroid/util/Pair;

    .line 9
    .line 10
    iput-object p3, p0, LB0/n0;->J:LO0/p;

    .line 11
    .line 12
    iput-object p4, p0, LB0/n0;->K:LO0/u;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LB0/n0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LB0/n0;->K:LO0/u;

    .line 4
    .line 5
    iget-object v2, p0, LB0/n0;->J:LO0/p;

    .line 6
    .line 7
    iget-object v3, p0, LB0/n0;->I:Landroid/util/Pair;

    .line 8
    .line 9
    iget-object v4, p0, LB0/n0;->H:LB0/q0;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v4, LB0/q0;->H:LB0/u0;

    .line 15
    .line 16
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 17
    .line 18
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, LO0/y;

    .line 29
    .line 30
    check-cast v0, LC0/A;

    .line 31
    .line 32
    invoke-virtual {v0, v4, v3, v2, v1}, LC0/A;->l(ILO0/y;LO0/p;LO0/u;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object v0, v4, LB0/q0;->H:LB0/u0;

    .line 37
    .line 38
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 39
    .line 40
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, LO0/y;

    .line 51
    .line 52
    check-cast v0, LC0/A;

    .line 53
    .line 54
    invoke-virtual {v0, v4, v3, v2, v1}, LC0/A;->F(ILO0/y;LO0/p;LO0/u;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
