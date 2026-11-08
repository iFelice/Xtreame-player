.class public final Lcom/google/android/gms/internal/measurement/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/g4;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/W1;

.field public static final b:Lcom/google/android/gms/internal/measurement/W1;

.field public static final c:Lcom/google/android/gms/internal/measurement/W1;

.field public static final d:Lcom/google/android/gms/internal/measurement/W1;

.field public static final e:Lcom/google/android/gms/internal/measurement/W1;

.field public static final f:Lcom/google/android/gms/internal/measurement/W1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/S1;->a()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo3/G;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v0, v2, v2}, Lo3/G;-><init>(Landroid/net/Uri;ZZ)V

    .line 9
    .line 10
    .line 11
    const-string v0, "measurement.test.boolean_flag"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v0, v2}, Lo3/G;->g(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/W1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    const-string v0, "measurement.test.cached_long_flag"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lo3/G;->d(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->b:Lcom/google/android/gms/internal/measurement/W1;

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/measurement/X1;->f:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/measurement/W1;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/W1;-><init>(Lo3/G;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->c:Lcom/google/android/gms/internal/measurement/W1;

    .line 38
    .line 39
    const-string v0, "measurement.test.int_flag"

    .line 40
    .line 41
    const-wide/16 v4, -0x2

    .line 42
    .line 43
    invoke-virtual {v1, v4, v5, v0}, Lo3/G;->d(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->d:Lcom/google/android/gms/internal/measurement/W1;

    .line 48
    .line 49
    const-string v0, "measurement.test.long_flag"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v0}, Lo3/G;->d(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->e:Lcom/google/android/gms/internal/measurement/W1;

    .line 56
    .line 57
    const-string v0, "measurement.test.string_flag"

    .line 58
    .line 59
    const-string v2, "---"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lo3/G;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/gms/internal/measurement/h4;->f:Lcom/google/android/gms/internal/measurement/W1;

    .line 66
    .line 67
    return-void
.end method
