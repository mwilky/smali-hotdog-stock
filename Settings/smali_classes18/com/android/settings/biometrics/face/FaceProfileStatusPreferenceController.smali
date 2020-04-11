.class public Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;
.source "FaceProfileStatusPreferenceController.java"


# static fields
.field public static final KEY_FACE_SETTINGS:Ljava/lang/String; = "face_settings_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "face_settings_profile"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mProfileChallengeUserId:I

    return v0
.end method

.method protected isUserSupported()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method