.class public final synthetic LU0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

.field public final synthetic I:J

.field public final synthetic J:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LU0/L;->G:I

    iput-object p1, p0, LU0/L;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    iput p2, p0, LU0/L;->J:I

    iput-wide p3, p0, LU0/L;->I:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;JI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LU0/L;->G:I

    iput-object p1, p0, LU0/L;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    iput-wide p2, p0, LU0/L;->I:J

    iput p4, p0, LU0/L;->J:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, LU0/L;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LU0/L;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LU0/N;

    .line 11
    .line 12
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 13
    .line 14
    check-cast v0, LB0/L;

    .line 15
    .line 16
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 17
    .line 18
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 19
    .line 20
    check-cast v0, LC0/A;

    .line 21
    .line 22
    iget-object v1, v0, LC0/A;->J:LC0/z;

    .line 23
    .line 24
    iget-object v1, v1, LC0/z;->e:LO0/y;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v8, LC0/e;

    .line 31
    .line 32
    iget-wide v5, p0, LU0/L;->I:J

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    iget v3, p0, LU0/L;->J:I

    .line 36
    .line 37
    move-object v2, v8

    .line 38
    move-object v7, v1

    .line 39
    invoke-direct/range {v2 .. v7}, LC0/e;-><init>(IIJLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x3fd

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v8}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, LU0/N;

    .line 51
    .line 52
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 53
    .line 54
    check-cast v0, LB0/L;

    .line 55
    .line 56
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 57
    .line 58
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 59
    .line 60
    check-cast v0, LC0/A;

    .line 61
    .line 62
    iget-object v1, v0, LC0/A;->J:LC0/z;

    .line 63
    .line 64
    iget-object v1, v1, LC0/z;->e:LO0/y;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, LC0/e;

    .line 71
    .line 72
    iget v3, p0, LU0/L;->J:I

    .line 73
    .line 74
    iget-wide v4, p0, LU0/L;->I:J

    .line 75
    .line 76
    invoke-direct {v2, v3, v4, v5, v1}, LC0/e;-><init>(IJLC0/b;)V

    .line 77
    .line 78
    .line 79
    const/16 v3, 0x3fa

    .line 80
    .line 81
    invoke-virtual {v0, v1, v3, v2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
