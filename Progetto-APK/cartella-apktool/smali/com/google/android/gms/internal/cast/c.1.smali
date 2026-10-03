.class public final Lcom/google/android/gms/internal/cast/c;
.super LD3/l;
.source "SourceFile"


# static fields
.field public static final J:LH3/b;

.field public static final K:I


# instance fields
.field public final H:Ljava/util/Set;

.field public I:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AppVisibilityProxy"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/c;->J:LH3/b;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput v0, Lcom/google/android/gms/internal/cast/c;->K:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.IAppVisibilityListener"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/c;->H:Ljava/util/Set;

    .line 17
    .line 18
    sget v0, Lcom/google/android/gms/internal/cast/c;->K:I

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 21
    .line 22
    return-void
.end method
