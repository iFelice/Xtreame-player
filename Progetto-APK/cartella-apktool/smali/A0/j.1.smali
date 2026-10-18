.class public final synthetic LA0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:J

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LA0/j;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/j;->J:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LA0/j;->H:Ljava/lang/Object;

    .line 9
    .line 10
    iput-wide p3, p0, LA0/j;->I:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, LA0/j;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/j;->H:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LA0/j;->J:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 11
    .line 12
    iget-object v0, v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LU0/N;

    .line 15
    .line 16
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 17
    .line 18
    check-cast v0, LB0/L;

    .line 19
    .line 20
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 21
    .line 22
    iget-object v2, v0, LB0/O;->X:LC0/a;

    .line 23
    .line 24
    check-cast v2, LC0/A;

    .line 25
    .line 26
    invoke-virtual {v2}, LC0/A;->T()LC0/b;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, LC0/o;

    .line 31
    .line 32
    iget-wide v5, p0, LA0/j;->I:J

    .line 33
    .line 34
    invoke-direct {v4, v3, v5, v6, v1}, LC0/o;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/16 v5, 0x1a

    .line 38
    .line 39
    invoke-virtual {v2, v3, v5, v4}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, LB0/O;->v0:Ljava/lang/Object;

    .line 43
    .line 44
    if-ne v2, v1, :cond_0

    .line 45
    .line 46
    new-instance v1, LN/i;

    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    invoke-direct {v1, v2}, LN/i;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, LB0/O;->S:Lx/e;

    .line 54
    .line 55
    invoke-virtual {v0, v5, v1}, Lx/e;->l(ILp0/u;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :pswitch_0
    check-cast v2, LA0/D;

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Exception;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, v2, LA0/D;->j:Lm0/r0;

    .line 71
    .line 72
    check-cast v1, Lf6/c;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lf6/c;->f(Lm0/o0;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_1
    check-cast v2, LA0/k;

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Exception;

    .line 81
    .line 82
    iget-object v0, v2, LA0/k;->g:LA0/H;

    .line 83
    .line 84
    invoke-static {v1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, LA0/H;->d(Lm0/o0;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
