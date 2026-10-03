.class public final synthetic LB0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LB0/q0;

.field public final synthetic I:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(LB0/q0;Landroid/util/Pair;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LB0/m0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/m0;->H:LB0/q0;

    .line 7
    .line 8
    iput-object p2, p0, LB0/m0;->I:Landroid/util/Pair;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LB0/m0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LB0/m0;->I:Landroid/util/Pair;

    .line 4
    .line 5
    iget-object v2, p0, LB0/m0;->H:LB0/q0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, LB0/q0;->H:LB0/u0;

    .line 11
    .line 12
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 13
    .line 14
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, LO0/y;

    .line 25
    .line 26
    check-cast v0, LC0/A;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, LC0/A;->w(ILO0/y;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, v2, LB0/q0;->H:LB0/u0;

    .line 33
    .line 34
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 35
    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, LO0/y;

    .line 47
    .line 48
    check-cast v0, LC0/A;

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, LC0/A;->h(ILO0/y;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object v0, v2, LB0/q0;->H:LB0/u0;

    .line 55
    .line 56
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 57
    .line 58
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, LO0/y;

    .line 69
    .line 70
    check-cast v0, LC0/A;

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, LC0/A;->H(ILO0/y;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    iget-object v0, v2, LB0/q0;->H:LB0/u0;

    .line 77
    .line 78
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 79
    .line 80
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, LO0/y;

    .line 91
    .line 92
    check-cast v0, LC0/A;

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, LC0/A;->C(ILO0/y;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
