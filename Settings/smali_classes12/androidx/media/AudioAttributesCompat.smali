.class public Landroidx/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/AudioAttributesCompat$AttributeContentType;,
        Landroidx/media/AudioAttributesCompat$AttributeUsage;,
        Landroidx/media/AudioAttributesCompat$AudioManagerHidden;,
        Landroidx/media/AudioAttributesCompat$Builder;
    }
.end annotation


# static fields
.field static final AUDIO_ATTRIBUTES_CONTENT_TYPE:Ljava/lang/String; = "androidx.media.audio_attrs.CONTENT_TYPE"

.field static final AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "androidx.media.audio_attrs.FLAGS"

.field static final AUDIO_ATTRIBUTES_FRAMEWORKS:Ljava/lang/String; = "androidx.media.audio_attrs.FRAMEWORKS"

.field static final AUDIO_ATTRIBUTES_LEGACY_STREAM_TYPE:Ljava/lang/String; = "androidx.media.audio_attrs.LEGACY_STREAM_TYPE"

.field static final AUDIO_ATTRIBUTES_USAGE:Ljava/lang/String; = "androidx.media.audio_attrs.USAGE"

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field static final FLAG_ALL:I = 0x3ff

.field static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field static final FLAG_BEACON:I = 0x8

.field static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field static final FLAG_BYPASS_MUTE:I = 0x80

.field static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field static final FLAG_HW_HOTWORD:I = 0x20

.field static final FLAG_LOW_LATENCY:I = 0x100

.field static final FLAG_SCO:I = 0x4

.field static final FLAG_SECURE:I = 0x2

.field static final INVALID_STREAM_TYPE:I = -0x1

.field private static final SDK_USAGES:[I

.field private static final SUPPRESSIBLE_CALL:I = 0x2

.field private static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field private static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field static sForceLegacyBehavior:Z


# instance fields
.field public mImpl:Landroidx/media/AudioAttributesImpl;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroidx/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media/AudioAttributesCompat;->SDK_USAGES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/media/AudioAttributesImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesCompat;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media/AudioAttributesImplApi21;->fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media/AudioAttributesImplBase;->fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesImpl;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v1, v0}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    :goto_1
    return-object v1
.end method

.method public static setForceLegacyBehavior(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sput-boolean p0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    return-void
.end method

.method static toVolumeStreamType(ZII)I
    .locals 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    if-nez p0, :cond_5

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/16 v0, 0xa

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    :pswitch_5
    return v3

    :pswitch_6
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    return v2

    :pswitch_7
    return v2

    :pswitch_8
    return v0

    :pswitch_9
    return v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method static usageToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "USAGE_ASSISTANT"

    return-object v0

    :pswitch_2
    const-string v0, "USAGE_GAME"

    return-object v0

    :pswitch_3
    const-string v0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object v0

    :pswitch_4
    const-string v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object v0

    :pswitch_5
    const-string v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object v0

    :pswitch_6
    const-string v0, "USAGE_NOTIFICATION_EVENT"

    return-object v0

    :pswitch_7
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object v0

    :pswitch_8
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object v0

    :pswitch_9
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object v0

    :pswitch_a
    const-string v0, "USAGE_NOTIFICATION_RINGTONE"

    return-object v0

    :pswitch_b
    const-string v0, "USAGE_NOTIFICATION"

    return-object v0

    :pswitch_c
    const-string v0, "USAGE_ALARM"

    return-object v0

    :pswitch_d
    const-string v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object v0

    :pswitch_e
    const-string v0, "USAGE_VOICE_COMMUNICATION"

    return-object v0

    :pswitch_f
    const-string v0, "USAGE_MEDIA"

    return-object v0

    :pswitch_10
    const-string v0, "USAGE_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/media/AudioAttributesCompat;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    new-instance v0, Landroidx/media/AudioAttributesCompat;

    new-instance v1, Landroidx/media/AudioAttributesImplApi26;

    move-object v2, p0

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroidx/media/AudioAttributesImplApi26;-><init>(Landroid/media/AudioAttributes;)V

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    new-instance v0, Landroidx/media/AudioAttributesCompat;

    new-instance v1, Landroidx/media/AudioAttributesImplApi21;

    move-object v2, p0

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media/AudioAttributesCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media/AudioAttributesCompat;

    iget-object v2, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getContentType()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getContentType()I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLegacyStreamType()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getLegacyStreamType()I

    move-result v0

    return v0
.end method

.method getRawLegacyStreamType()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getRawLegacyStreamType()I

    move-result v0

    return v0
.end method

.method public getUsage()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getUsage()I

    move-result v0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroidx/media/AudioAttributesImpl;->getAudioAttributes()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
