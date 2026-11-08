.class public final LZ6/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/q;


# static fields
.field public static final a:LZ6/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LZ6/A;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LZ6/A;->a:LZ6/A;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    rem-int/lit8 p2, p2, 0x64

    .line 7
    .line 8
    rem-int/lit8 p2, p2, 0x64

    .line 9
    .line 10
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final c(Ljava/lang/Appendable;I)V
    .locals 0

    .line 1
    rem-int/lit8 p2, p2, 0x64

    .line 2
    .line 3
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
