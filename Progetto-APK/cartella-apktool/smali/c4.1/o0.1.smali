.class public final Lc4/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/measurement/M;

.field public final synthetic I:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/o0;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/o0;->H:Lcom/google/android/gms/internal/measurement/M;

    .line 7
    .line 8
    iput-object p1, p0, Lc4/o0;->I:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lc4/o0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/o0;->I:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 10
    .line 11
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 12
    .line 13
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 17
    .line 18
    iget-object v3, v1, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v1, v1, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_0
    iget-object v1, p0, Lc4/o0;->H:Lcom/google/android/gms/internal/measurement/M;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lc4/I1;->I(Lcom/google/android/gms/internal/measurement/M;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 38
    .line 39
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lc4/d1;->B(Z)Lc4/J1;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v1, LZ3/v;

    .line 54
    .line 55
    iget-object v6, p0, Lc4/o0;->H:Lcom/google/android/gms/internal/measurement/M;

    .line 56
    .line 57
    const/16 v7, 0xa

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v3, v1

    .line 61
    move-object v4, v0

    .line 62
    invoke-direct/range {v3 .. v8}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
