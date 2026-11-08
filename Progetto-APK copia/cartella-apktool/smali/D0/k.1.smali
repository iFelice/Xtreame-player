.class public final synthetic LD0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:J

.field public final synthetic J:J

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p7, p0, LD0/k;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD0/k;->K:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LD0/k;->H:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p3, p0, LD0/k;->I:J

    .line 11
    .line 12
    iput-wide p5, p0, LD0/k;->J:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, LD0/k;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LD0/k;->K:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LU0/N;

    .line 13
    .line 14
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    check-cast v0, LB0/L;

    .line 17
    .line 18
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 19
    .line 20
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 21
    .line 22
    check-cast v0, LC0/A;

    .line 23
    .line 24
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    new-instance v10, LB0/y;

    .line 29
    .line 30
    iget-object v3, p0, LD0/k;->H:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    iget-wide v4, p0, LD0/k;->J:J

    .line 34
    .line 35
    iget-wide v6, p0, LD0/k;->I:J

    .line 36
    .line 37
    move-object v1, v10

    .line 38
    move-object v2, v9

    .line 39
    invoke-direct/range {v1 .. v8}, LB0/y;-><init>(LC0/b;Ljava/lang/String;JJI)V

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x3f8

    .line 43
    .line 44
    invoke-virtual {v0, v9, v1, v10}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    check-cast v1, LD0/n;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, v1, LD0/n;->b:LD0/o;

    .line 56
    .line 57
    check-cast v0, LB0/L;

    .line 58
    .line 59
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 60
    .line 61
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 62
    .line 63
    check-cast v0, LC0/A;

    .line 64
    .line 65
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-instance v10, LB0/y;

    .line 70
    .line 71
    iget-object v3, p0, LD0/k;->H:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    iget-wide v4, p0, LD0/k;->J:J

    .line 75
    .line 76
    iget-wide v6, p0, LD0/k;->I:J

    .line 77
    .line 78
    move-object v1, v10

    .line 79
    move-object v2, v9

    .line 80
    invoke-direct/range {v1 .. v8}, LB0/y;-><init>(LC0/b;Ljava/lang/String;JJI)V

    .line 81
    .line 82
    .line 83
    const/16 v1, 0x3f0

    .line 84
    .line 85
    invoke-virtual {v0, v9, v1, v10}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
