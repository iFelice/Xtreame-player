.class public final Lcom/google/android/gms/internal/ads/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Dw;


# instance fields
.field public G:J

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/internal/ads/PA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/A0;->G:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LF5/g;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/A0;->G:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LF5/g;

    .line 4
    .line 5
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    iget-object v0, v0, Lf/H;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lo3/K;

    .line 10
    .line 11
    check-cast v0, Lo3/L;

    .line 12
    .line 13
    invoke-virtual {v0}, Lo3/L;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/A0;->G:J

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/I6;->P()Lcom/google/android/gms/internal/ads/H6;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 29
    .line 30
    check-cast v3, Lcom/google/android/gms/internal/ads/I6;

    .line 31
    .line 32
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/I6;->M(Lcom/google/android/gms/internal/ads/I6;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/android/gms/internal/ads/I6;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'total_requests\'"

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v1, v2}, La7/b;->s(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method
