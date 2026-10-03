.class public abstract Lcom/google/android/gms/internal/measurement/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x6

    .line 7
    const-string v4, "JobSchedulerCompat"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/16 v6, 0x18

    .line 11
    .line 12
    if-lt v1, v6, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-class v1, Landroid/app/job/JobScheduler;

    .line 15
    .line 16
    const-string v7, "scheduleAsPackage"

    .line 17
    .line 18
    const/4 v8, 0x4

    .line 19
    new-array v8, v8, [Ljava/lang/Class;

    .line 20
    .line 21
    const-class v9, Landroid/app/job/JobInfo;

    .line 22
    .line 23
    aput-object v9, v8, v2

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    aput-object v0, v8, v9

    .line 27
    .line 28
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v10, 0x2

    .line 31
    aput-object v9, v8, v10

    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    aput-object v0, v8, v9

    .line 35
    .line 36
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    nop

    .line 42
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 49
    .line 50
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    move-object v0, v5

    .line 54
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/G;->a:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    if-lt v0, v6, :cond_1

    .line 59
    .line 60
    :try_start_1
    const-class v0, Landroid/os/UserHandle;

    .line 61
    .line 62
    const-string v1, "myUserId"

    .line 63
    .line 64
    new-array v2, v2, [Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 67
    .line 68
    .line 69
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    nop

    .line 72
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const-string v0, "No myUserId method available"

    .line 79
    .line 80
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_1
    sput-object v5, Lcom/google/android/gms/internal/measurement/G;->b:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    return-void
.end method
