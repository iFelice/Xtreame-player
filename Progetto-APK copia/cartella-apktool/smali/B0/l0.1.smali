.class public final synthetic LB0/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LB0/q0;

.field public final synthetic I:Landroid/util/Pair;

.field public final synthetic J:LO0/u;


# direct methods
.method public synthetic constructor <init>(LB0/q0;Landroid/util/Pair;LO0/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, LB0/l0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/l0;->H:LB0/q0;

    .line 7
    .line 8
    iput-object p2, p0, LB0/l0;->I:Landroid/util/Pair;

    .line 9
    .line 10
    iput-object p3, p0, LB0/l0;->J:LO0/u;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LB0/l0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LB0/l0;->J:LO0/u;

    .line 4
    .line 5
    iget-object v2, p0, LB0/l0;->I:Landroid/util/Pair;

    .line 6
    .line 7
    iget-object v3, p0, LB0/l0;->H:LB0/q0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, LB0/q0;->H:LB0/u0;

    .line 13
    .line 14
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 15
    .line 16
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, LO0/y;

    .line 27
    .line 28
    check-cast v0, LC0/A;

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2, v1}, LC0/A;->M(ILO0/y;LO0/u;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, v3, LB0/q0;->H:LB0/u0;

    .line 35
    .line 36
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 37
    .line 38
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, LO0/y;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v0, LC0/A;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2, v1}, LC0/A;->r(ILO0/y;LO0/u;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
