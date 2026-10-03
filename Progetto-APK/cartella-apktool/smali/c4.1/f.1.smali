.class public final Lc4/f;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Lc4/F1;

.field public J:J

.field public K:Z

.field public L:Ljava/lang/String;

.field public final M:Lc4/u;

.field public N:J

.field public O:Lc4/u;

.field public final P:J

.field public final Q:Lc4/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/v;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, LJ3/v;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lc4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lc4/f;->G:Ljava/lang/String;

    iput-object v0, p0, Lc4/f;->G:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lc4/f;->H:Ljava/lang/String;

    iput-object v0, p0, Lc4/f;->H:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lc4/f;->I:Lc4/F1;

    iput-object v0, p0, Lc4/f;->I:Lc4/F1;

    .line 6
    iget-wide v0, p1, Lc4/f;->J:J

    iput-wide v0, p0, Lc4/f;->J:J

    .line 7
    iget-boolean v0, p1, Lc4/f;->K:Z

    iput-boolean v0, p0, Lc4/f;->K:Z

    .line 8
    iget-object v0, p1, Lc4/f;->L:Ljava/lang/String;

    iput-object v0, p0, Lc4/f;->L:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lc4/f;->M:Lc4/u;

    iput-object v0, p0, Lc4/f;->M:Lc4/u;

    .line 10
    iget-wide v0, p1, Lc4/f;->N:J

    iput-wide v0, p0, Lc4/f;->N:J

    .line 11
    iget-object v0, p1, Lc4/f;->O:Lc4/u;

    iput-object v0, p0, Lc4/f;->O:Lc4/u;

    .line 12
    iget-wide v0, p1, Lc4/f;->P:J

    iput-wide v0, p0, Lc4/f;->P:J

    .line 13
    iget-object p1, p1, Lc4/f;->Q:Lc4/u;

    iput-object p1, p0, Lc4/f;->Q:Lc4/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lc4/f;->G:Ljava/lang/String;

    iput-object p2, p0, Lc4/f;->H:Ljava/lang/String;

    iput-object p3, p0, Lc4/f;->I:Lc4/F1;

    iput-wide p4, p0, Lc4/f;->J:J

    iput-boolean p6, p0, Lc4/f;->K:Z

    iput-object p7, p0, Lc4/f;->L:Ljava/lang/String;

    iput-object p8, p0, Lc4/f;->M:Lc4/u;

    iput-wide p9, p0, Lc4/f;->N:J

    iput-object p11, p0, Lc4/f;->O:Lc4/u;

    iput-wide p12, p0, Lc4/f;->P:J

    iput-object p14, p0, Lc4/f;->Q:Lc4/u;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lc4/f;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lc4/f;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lc4/f;->I:Lc4/F1;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    iget-wide v3, p0, Lc4/f;->J:J

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    const/16 v5, 0x8

    .line 29
    .line 30
    invoke-static {p1, v1, v5}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lc4/f;->K:Z

    .line 37
    .line 38
    const/4 v3, 0x6

    .line 39
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x7

    .line 46
    iget-object v2, p0, Lc4/f;->L:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lc4/f;->M:Lc4/u;

    .line 52
    .line 53
    invoke-static {p1, v5, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, Lc4/f;->N:J

    .line 57
    .line 58
    const/16 v3, 0x9

    .line 59
    .line 60
    invoke-static {p1, v3, v5}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    iget-object v2, p0, Lc4/f;->O:Lc4/u;

    .line 69
    .line 70
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0xb

    .line 74
    .line 75
    invoke-static {p1, v1, v5}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lc4/f;->P:J

    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xc

    .line 84
    .line 85
    iget-object v2, p0, Lc4/f;->Q:Lc4/u;

    .line 86
    .line 87
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
