.class public final synthetic Lp0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lp0/t;->G:I

    iput-object p1, p0, Lp0/t;->I:Ljava/lang/Object;

    iput p2, p0, Lp0/t;->H:I

    iput-object p3, p0, Lp0/t;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lp0/t;->G:I

    iput-object p1, p0, Lp0/t;->I:Ljava/lang/Object;

    iput-object p2, p0, Lp0/t;->J:Ljava/lang/Object;

    iput p3, p0, Lp0/t;->H:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lp0/t;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lp0/t;->J:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lp0/t;->H:I

    .line 6
    .line 7
    iget-object v3, p0, Lp0/t;->I:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, LM1/c;

    .line 13
    .line 14
    invoke-interface {v3, v2, v1}, LM1/c;->q(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v3, LM1/a;

    .line 19
    .line 20
    iget-object v0, v3, LM1/a;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, LM1/c;

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, LM1/c;->q(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast v3, LG0/o;

    .line 29
    .line 30
    check-cast v1, LG0/p;

    .line 31
    .line 32
    iget v0, v3, LG0/o;->a:I

    .line 33
    .line 34
    iget-object v3, v3, LG0/o;->b:LO0/y;

    .line 35
    .line 36
    invoke-interface {v1, v0, v3, v2}, LG0/p;->E(ILO0/y;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    check-cast v3, LB0/q0;

    .line 41
    .line 42
    check-cast v1, Landroid/util/Pair;

    .line 43
    .line 44
    iget-object v0, v3, LB0/q0;->H:LB0/u0;

    .line 45
    .line 46
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 47
    .line 48
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, LO0/y;

    .line 59
    .line 60
    check-cast v0, LC0/A;

    .line 61
    .line 62
    invoke-virtual {v0, v3, v1, v2}, LC0/A;->E(ILO0/y;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_3
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    .line 68
    check-cast v1, Lp0/u;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lp0/w;

    .line 85
    .line 86
    iget-boolean v4, v3, Lp0/w;->d:Z

    .line 87
    .line 88
    if-nez v4, :cond_0

    .line 89
    .line 90
    const/4 v4, -0x1

    .line 91
    if-eq v2, v4, :cond_1

    .line 92
    .line 93
    iget-object v4, v3, Lp0/w;->b:Lm0/q;

    .line 94
    .line 95
    invoke-virtual {v4, v2}, Lm0/q;->a(I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    const/4 v4, 0x1

    .line 99
    iput-boolean v4, v3, Lp0/w;->c:Z

    .line 100
    .line 101
    iget-object v3, v3, Lp0/w;->a:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-interface {v1, v3}, Lp0/u;->invoke(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
