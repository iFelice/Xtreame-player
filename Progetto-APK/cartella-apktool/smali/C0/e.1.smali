.class public final synthetic LC0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Lp0/j;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:J

.field public final synthetic J:I


# direct methods
.method public synthetic constructor <init>(IIJLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LC0/e;->G:I

    iput-object p5, p0, LC0/e;->H:Ljava/lang/Object;

    iput-wide p3, p0, LC0/e;->I:J

    iput p1, p0, LC0/e;->J:I

    return-void
.end method

.method public synthetic constructor <init>(IJLC0/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LC0/e;->G:I

    iput-object p4, p0, LC0/e;->H:Ljava/lang/Object;

    iput p1, p0, LC0/e;->J:I

    iput-wide p2, p0, LC0/e;->I:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, LC0/e;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq1/o;

    .line 4
    .line 5
    check-cast p1, Lq1/a;

    .line 6
    .line 7
    iget-object v1, v0, Lq1/o;->i:Lm0/t;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lq1/a;->a:Lz4/H;

    .line 13
    .line 14
    iget-object v2, v0, Lq1/o;->c:LF2/G;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-wide v2, p1, Lq1/a;->c:J

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, LF2/G;->B(JLz4/H;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, v0, Lq1/o;->d:Lp0/E;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    array-length v3, v1

    .line 31
    invoke-virtual {v2, v3, v1}, Lp0/E;->J(I[B)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lq1/o;->a:LW0/L;

    .line 35
    .line 36
    array-length v4, v1

    .line 37
    invoke-interface {v3, v4, v2}, LW0/L;->e(ILp0/E;)V

    .line 38
    .line 39
    .line 40
    iget-wide v2, p0, LC0/e;->I:J

    .line 41
    .line 42
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    const-wide v7, 0x7fffffffffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    iget-wide v9, p1, Lq1/a;->b:J

    .line 54
    .line 55
    cmp-long p1, v9, v4

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, v0, Lq1/o;->i:Lm0/t;

    .line 60
    .line 61
    iget-wide v4, p1, Lm0/t;->t:J

    .line 62
    .line 63
    cmp-long p1, v4, v7

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 71
    .line 72
    .line 73
    :goto_1
    move-wide v8, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    iget-object p1, v0, Lq1/o;->i:Lm0/t;

    .line 76
    .line 77
    iget-wide v4, p1, Lm0/t;->t:J

    .line 78
    .line 79
    cmp-long p1, v4, v7

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    add-long/2addr v2, v9

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    add-long v2, v9, v4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_2
    iget p1, p0, LC0/e;->J:I

    .line 89
    .line 90
    or-int/lit8 v10, p1, 0x1

    .line 91
    .line 92
    array-length v11, v1

    .line 93
    const/4 v13, 0x0

    .line 94
    iget-object v7, v0, Lq1/o;->a:LW0/L;

    .line 95
    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-interface/range {v7 .. v13}, LW0/L;->d(JIIILW0/K;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LC0/e;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
