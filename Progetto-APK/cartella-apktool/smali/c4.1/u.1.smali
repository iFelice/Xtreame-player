.class public final Lc4/u;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc4/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Lc4/t;

.field public final I:Ljava/lang/String;

.field public final J:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/v;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, LJ3/v;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lc4/u;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lc4/u;->G:Ljava/lang/String;

    iput-object v0, p0, Lc4/u;->G:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lc4/u;->H:Lc4/t;

    iput-object v0, p0, Lc4/u;->H:Lc4/t;

    .line 5
    iget-object p1, p1, Lc4/u;->I:Ljava/lang/String;

    iput-object p1, p0, Lc4/u;->I:Ljava/lang/String;

    iput-wide p2, p0, Lc4/u;->J:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lc4/u;->G:Ljava/lang/String;

    iput-object p2, p0, Lc4/u;->H:Lc4/t;

    iput-object p3, p0, Lc4/u;->I:Ljava/lang/String;

    iput-wide p4, p0, Lc4/u;->J:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/u;->H:Lc4/t;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "origin="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lc4/u;->I:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ",name="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lc4/u;->G:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, ",params="

    .line 27
    .line 28
    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LJ3/v;->a(Lc4/u;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
