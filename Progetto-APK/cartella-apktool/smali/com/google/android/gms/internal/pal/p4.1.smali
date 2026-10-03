.class public abstract synthetic Lcom/google/android/gms/internal/pal/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Lu/h;->c(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    array-length v0, v0

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/pal/p4;->a:[I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/pal/p4;->a:[I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    return-void
.end method
